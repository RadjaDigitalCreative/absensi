<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class Gaji extends Controller
{
	public function index(Request $request)
	{
		$asu = DB::table('users')
		->where('id', $request->user_id)
		->first();
		$pegawai = DB::table('users')
		->where('id', $request->user_id)
		->first();

		$data = DB::table("users")
		->select(DB::raw("total, users.name, users.image, gaji.created_at, gaji.id, gaji.norek, gaji.bank, gaji_lembur.gaji AS total_lembur"))
		->leftJoin('gaji', function($join){
			$join->on('gaji.user_id', '=', 'users.id');
		})
		->leftJoin('gaji_lembur', function($join){
			$join->on('gaji_lembur.id_team', '=', 'users.id_team');
		})
		->where('users.id', $request->user_id)
		->where('users.id_team', $asu->id_team)
		->groupBy("users.id")
		->first();

		$data2 = DB::table("users")
		->select(DB::raw("SUM(potongan.total) as total, users.name"))
		->leftJoin('potongan', function($join){
			$join->on('potongan.user_id', '=', 'users.id');
		})
		->groupBy("users.id")
		->where('users.id', $request->user_id)
		->first();

		$data3 = DB::table("users")
		->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.lembur) as jumlah_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat"))
		->leftJoin('kerja', function($join){
			$join->on('kerja.user_id', '=', 'users.id');
		})
		->leftJoin('jam_kerja', function($join){
			$join->on('jam_kerja.id_team', '=', 'users.id_team');
		})
		->groupBy("users.id")
		->where('kerja.status', 2)
		        ->where('kerja.bulan', now()->month)
		->where('users.id', $request->user_id)
		->first();

		$data4 = DB::table("absensi")
		->join('users', 'users.id_team', 'absensi.id_team')
		->select(DB::raw("COUNT(absensi.id) as total"))
		->where('absensi.bulan', now()->month)
		->where('users.id_team', $asu->id_team)
		 ->groupBy('users.id')
		->first();

		$data5 = DB::table("users")
		->leftJoin('gaji', function($join){
			$join->on('gaji.user_id', '=', 'users.id');
		})
		->where('users.id', $request->user_id)
		->get();

		$data6 = DB::table("users")
		->leftJoin('potongan', function($join){
			$join->on('potongan.user_id', '=', 'users.id');
		})
		->where('users.id', $request->user_id)
		->get();



		$hasil2 = $data->total / $data4->total;
		$hasil3 = $data3->total_lembur * $data->total_lembur;
		$hasil4 = $data3->total_telat * $data3->telat;
		$cuti = DB::table('gaji_cuti')->where('user_id', $request->user_id)->where('status',  '1')->get();
		$ambil_cuti = DB::table('kerja')->where('user_id', $request->user_id)->where('cuti', '!=' , '0')->count();
		$a = 0;
		$b = 0;
		foreach ($cuti as $key) {
			$a = $key->hari;
			$b = $key->gaji;
		}
		$hasil5 = $a;
		$hasil6 = $ambil_cuti;
		$hasil7 = ($a - $ambil_cuti) * $b;
		$hasil = (((($data->total - $data2->total ) / $data4->total) * $data3->total) + ($data3->total_lembur * $data->total_lembur) - ($data3->total_telat * $data3->telat) + $hasil7);
        function rupiah($m)
		{
									$rupiah = "Rp ".number_format($m,0,",",".").",-";
									return $rupiah;
								}						
		return response()->json([
			'gambar_pegawai' => $data->image,
			'nama_pegawai' => $data->name,
			'jumlah_hari_kerja' => $data4->total,
			'masuk_kerja' => $data3->total,
			'lembur' => $data3->jumlah_lembur,
			'total_potongan' => $data2->total,
			'cuti_terambil' => $hasil6,
			'gaji_cuti' => $hasil7,
			'gaji_total' => rupiah($data->total),
			'gaji_saat_ini' => rupiah($hasil),
			'gaji_perhari' => rupiah($hasil2),
			'gaji_lembur_saat_ini' => rupiah($hasil3),
			'potongan_pelanggaran_saat_ini' => rupiah($hasil4),
			'no_rekening' => $data->norek,
			'bank' => $data->bank,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
}
