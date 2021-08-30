<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
class Absen_Lembur extends Controller
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
		->join('gaji_lembur', 'absensi.id_team', 'gaji_lembur.id_team')
		->where('gaji_lembur.user_id', $request->user_id)
		->get();

		return response()->json([
			'hari_absen' => $data,
			'lembur' => 'aktif',
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function lembur_status(Request $request)
	{
		$jam_lembur = DB::table('gaji_lembur')
		->leftJoin('users', function($join){
			$join->on('gaji_lembur.id_team', '=', 'users.id_team');
		})
		->where('users.id', $request->user_id)
		->first();

		$time = Carbon::parse($jam_lembur->jam_masuk_lembur)->format('H');
		$ami = now()->format('H');
		$lembur = $ami - $time;

		$user = DB::table('kerja')
		->where('user_id', $request->user_id)
		->where('date', $request->date)
		->first();
		if ($user === null) {
			return response()->json([
				'lembur' => 'anda belum absen wajib',
				'status_code'   => 203,
				'msg'           => 'not success',
			], 203);
		}else{
			if ($lembur <= 1) {
				return response()->json([
					'hari_absen' => $data,
					'lembur' => 'diluar jam absen',
					'status_code'   => 203,
					'msg'           => 'not success',
				], 203);
			}else{
				$ami = DB::table('kerja')
				->where('user_id', $request->user_id)
				->where('date', $request->date)
				->update([
					'lembur' => $lembur,
					'lembur_at' => now()->toTimeString(),
				]);
				return response()->json([
					
					'lembur' => 'berhasil',
					'status' => $ami,
					'status_code'   => 200,
					'msg'           => 'success',
				], 200);
			}

		}
	}
}