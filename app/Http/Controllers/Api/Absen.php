<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
class Absen extends Controller
{
	public function index(Request $request)
	{
		$data = DB::table('absensi')
		->select([
			'absensi.id',
			'absensi.date',
			'absensi.bulan',
			'absensi.id_team',
			'absensi.created_at AS absen_masuk',
			'absensi.updated_at AS absen_keluar',
		])
		->where('absensi.id_team', $request->id_team)
		->get();
		return response()->json([
			'hari_absen' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function sudah_absen(Request $request)
	{
		$data = DB::table('absensi')
		->join('users', function($join){
			$join->on('users.id_team', '=', 'absensi.id_team');
		})
		->join('kerja', function($join){
			$join->on('kerja.date', '=', 'absensi.date');
		})
		->select([
			'absensi.id',
			'absensi.date',
			'absensi.bulan',
			'absensi.id_team',
			'kerja.status',
			'kerja.user_id',
			'kerja.lembur',
			'kerja.absen',
			'kerja.note AS note_masuk',
			'kerja.note2 AS note_keluar',
			'kerja.note_radius_masuk',
			'kerja.note_radius_keluar',
			'kerja.created_at AS absen_masuk',
			'kerja.updated_at AS absen_keluar',
			'kerja.lembur_at',
			'kerja.absen_telat',
			'kerja.longitude',
			'kerja.langitude',
		])
		->where('users.id_team', $request->id_team)
		->where('kerja.user_id', $request->user_id)
		->orderBy('kerja.id', 'DESC')
		->groupBy('kerja.id')
		->get();
		return response()->json([
			'absen_hadir' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function absen_all(Request $request)
	{
		$data = DB::table('users')
		->join('kerja', function($join){
			$join->on('users.id', '=', 'kerja.user_id');
		})
		->select([
			'kerja.status', 
			'users.name',
			'users.id',
			'kerja.longitude',
			'kerja.note AS note_masuk',
			'kerja.note2 AS note_keluar',
			'kerja.note_radius_masuk',
			'kerja.note_radius_keluar',
			'kerja.langitude',
		])
		->where('users.id_team', $request->id_team)
		->orderBy('kerja.id', 'DESC')
		->get();
		return response()->json([
			'sudah_absen_all' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function sudah_absen_hari(Request $request)
	{
		$data = DB::table('absensi')
		->join('users', function($join){
			$join->on('users.id_team', '=', 'absensi.id_team');
		})
		->join('kerja', function($join){
			$join->on('kerja.date', '=', 'absensi.date');
		})
		->select([
			'absensi.id',
			'absensi.date',
			'absensi.bulan',
			'absensi.id_team',
			'kerja.status',
			'kerja.user_id',
			'kerja.lembur',
			'kerja.absen',
			'kerja.created_at AS absen_masuk',
			'kerja.updated_at AS absen_keluar',
			'kerja.lembur_at',
			'kerja.note AS note_masuk',
			'kerja.note2 AS note_keluar',
			'kerja.note_radius_masuk',
			'kerja.note_radius_keluar',
			'kerja.absen_telat',
			'kerja.longitude',
			'kerja.langitude',
		])

		->where('kerja.user_id', $request->user_id)
		->where('kerja.created_at', 'like', '%' . now()->format('Y-m-d') . '%')
		->orderBy('kerja.id', 'DESC')
		->groupBy('kerja.id')
		->get();
		return response()->json([
			'absen_hari_ini' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}

	public function kirim(Request $request)
	{
		$time = Carbon::now()->toTimeString();
		$user = DB::table('kerja')
		->where('user_id', $request->user_id)
		->where('date', $request->date)
		->first();

		$telat = DB::table('users')
		->leftJoin('kerja', function($join){
			$join->on('kerja.user_id', '=', 'users.id');
		})
		->leftJoin('jam_kerja', function($join){
			$join->on('jam_kerja.id_team', '=', 'users.id_team');
		})
		->where('users.id', $request->user_id)
		->first();

		if ($time >= $telat->jam_masuk) {
			if ($user === null) {
				$data = DB::table('kerja')
				->insert([
					'date' => $request->date,
					'bulan' => $request->bulan,
					'user_id' => $request->user_id,
					'longitude' => $request->longitude,
					'langitude' => $request->langitude,
					'note' => $request->note,
					'note_radius_masuk' => $request->note_radius_masuk,
					'status' => 1,
					'created_at' =>now(),
					'absen' => $time,
					'absen_telat' => 1,
				]);
				return response()->json([
					'absen masuk' => $data,
					'status_code'   => 200,
					'msg'           => 'success',
				], 200);
			}else{
				$data = DB::table('kerja')
				->where('date', $request->date)
                ->where('user_id', $request->user_id)
				->update([
					'date' => $request->date,
					'bulan' => $request->bulan,
					'user_id' => $request->user_id,
					'status' => 2,
					'note2' => $request->note2,
					'note_radius_keluar' => $request->note_radius_keluar,
					'longitude' => $request->longitude,
					'langitude' => $request->langitude,
					'updated_at' =>now(),
				]);
				return response()->json([
					'absen keluar' => $data,
					'status_code'   => 200,
					'msg'           => 'success',
				], 200);
			}        
		}elseif($time <= $telat->jam_masuk){
			if ($user === null) {
				$data = DB::table('kerja')
				->insert([
					'date' => $request->date,
					'bulan' => $request->bulan,
					'user_id' => $request->user_id,
					'status' => 1,
					'note_radius_masuk' => $request->note_radius_masuk,
					'note' => $request->note,
					'longitude' => $request->longitude,
					'langitude' => $request->langitude,
					'created_at' =>now(),
					'absen' => $time,
				]);
				return response()->json([
					'absen masuk' => $data,
					'status_code'   => 200,
					'msg'           => 'success',
				], 200);
			}else{
				$data = DB::table('kerja')
				->where('date', $request->date)
				->where('user_id', $request->user_id)
				->update([
					'date' => $request->date,
					'bulan' => $request->bulan,
					'note2' => $request->note2,
					'note_radius_keluar' => $request->note_radius_keluar,
					'longitude' => $request->longitude,
					'langitude' => $request->langitude,
					'user_id' => $request->user_id,
					'status' => 2,
					'updated_at' =>now(),
				]);
				return response()->json([
					'absen keluar' => $data,
					'status_code'   => 200,
					'msg'           => 'success',
				], 200);
			}      
		}
	}
	public function rekap_absen(Request $request)
	{
		$pegawai = DB::table('users')
		->where('id', $request->user_id)
		->first();

		$data = DB::table("users")
		->select(DB::raw("SUM(gaji.total) as total, users.name, gaji.id, gaji.norek, gaji.bank, gaji_lembur.gaji AS total_lembur, gaji.created_at, users.image"))
		->leftJoin('gaji', function($join){
			$join->on('gaji.user_id', '=', 'users.id');
		})
		->leftJoin('gaji_lembur', function($join){
			$join->on('gaji_lembur.id_team', '=', 'users.id_team');
		})
		->where('users.id', $request->user_id)
		// ->where('users.id_team', $request->id_team)
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
		// ->where('users.id', $request->user_id)
		->first();

		$data4 = DB::table("absensi")
		->join('users', 'users.id_team', 'absensi.id_team')
		->select(DB::raw("COUNT(absensi.id) as total"))
		// ->where('users.id_team', $request->id_team)
		->where('absensi.bulan', now()->month)
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
		$hasil2 = $data->total / $data4->total;
		$hasil3 = $data3->total_lembur * $data->total_lembur;
		$hasil4 = $data3->total_telat * $data3->telat;

		switch (now()->month) {
			case '1':
			$bulan = 'Januari';
			break;
			case '2':
			$bulan = 'Februari';
			break;
			case '3':
			$bulan = 'Maret';
			break;
			case '4':
			$bulan = 'April';
			break;
			case '5':
			$bulan = 'Mei';
			break;
			case '6':
			$bulan = 'Juni';
			break;
			case '7':
			$bulan = 'Juli';
			break;
			case '8':
			$bulan = 'Agustus';
			break;
			case '9':
			$bulan = 'September';
			break;
			case '10':
			$bulan = 'Oktober';
			break;
			case '11':
			$bulan = 'November';
			break;
			case '12':
			$bulan = 'Desember';
			break;
			default:
			$bulan = 'Bulan Tidak Ada';
			break;
		}
		return response()->json([
			'bulan' => $bulan,
			'gambar_pegawai' => $data->image,
			'nama_pegawai' => $data->name,
			'jumlah_hari_kerja' => $data4->total,
			'masuk_kerja' => $data3->total,
			'lembur' => $data3->jumlah_lembur,
			'cuti_terambil' => $hasil6,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
}
