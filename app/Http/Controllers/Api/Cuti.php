<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class Cuti extends Controller
{
	public function index(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->join('users', 'gaji_cuti.user_id', 'users.id')
		->where('users.id_team', $request->id_team)
		->get();
		return response()->json([
			'tabel_cuti' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function user(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->join('users', 'gaji_cuti.user_id', 'users.id')
		->select('gaji_cuti.*', 'users.name')
		->where('gaji_cuti.user_id', $request->user_id)
		->get();
		return response()->json([
			'tabel_cuti_user' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function ajukan(Request $request)
	{
		$user = DB::table('setting_cuti')
		->where('user_id', $request->user_id)
		->first();
		$count  = count($request->tgl_mulai_cuti);
		if ($user === NULL) {
			return response()->json([
				'ajukan_cuti' => 'Anda belum bisa mengambil cuti',
				'status_code'   => 204,
				'msg'           => 'not success',
			], 200);
		}elseif($count >= ($user->hari + 1)){
			return response()->json([
				'ajukan_cuti' => 'Ajukan cuti melebihi batas yang ditentukan',
				'status_code'   => 204,
				'msg'           => 'success',
			], 200);
		}else{
			
			$random = bin2hex(random_bytes(20));
			for ($i=0; $i < $count; $i++) { 
				$data = DB::table('gaji_cuti')
				->insert([
					'user_id' => $request->user_id,
					'tgl_mulai_cuti' => $request->tgl_mulai_cuti[$i],
					'hari' => $count,
					'keperluan' => $request->keperluan,
					'gaji' => $user->gaji,
					'id_cuti' => $random,
					'created_at' =>now(),
					'updated_at' =>now(),
				]);
			}
			return response()->json([
				'ajukan_cuti' => $data,
				'status_code'   => 200,
				'msg'           => 'success',
			], 200);
		}
	}

	public function ajukan_update(Request $request)
	{
		$user = DB::table('gaji_cuti')
		->where('id_cuti', $request->id_cuti)
		->first();
		$count  = count($request->tgl_mulai_cuti);
		if ($user === NULL) {
			return response()->json([
				'ajukan_cuti' => 'data tidak ditemukan',
				'status_code'   => 204,
				'msg'           => 'success',
			], 200);
		}else{
			for ($i=0; $i < $count; $i++) { 
				DB::table('gaji_cuti')
				->where('id_cuti', $request->id_cuti)
				->delete();
				$data = DB::table('gaji_cuti')
				->insert([
					'user_id' => $request->user_id,
					'tgl_mulai_cuti' => $request->tgl_mulai_cuti[$i],
					'hari' => $count,
					'keperluan' => $request->keperluan,
					'gaji' => $user->gaji,
					'id_cuti' => $request->id_cuti,
					'created_at' =>now(),
					'updated_at' =>now(),
				]);
			}
			return response()->json([
				'ajukan_cuti' => $data,
				'status_code'   => 200,
				'msg'           => 'success',
			], 200);
		}
		

	}
	public function delete_ajukan(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->where('gaji_cuti.id_cuti', $request->id_cuti)
		->delete();
		return response()->json([
			'ajukan_cuti_user_hapus' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function bonus(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->where('gaji_cuti.id_cuti', $request->id_cuti)
		->update([
			'gaji' => $request->gaji,
		]);
		return response()->json([
			'cuti_beri_bonus' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function approve(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->where('gaji_cuti.id_cuti', $request->id_cuti)
		->update([
			'status' => 1,
		]);
		return response()->json([
			'cuti_approved' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function unapprove(Request $request)
	{
		$data = DB::table('gaji_cuti')
		->where('gaji_cuti.id_cuti', $request->id_cuti)
		->update([
			'status' => 0,
		]);
		return response()->json([
			'cuti_unapproved' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
}
