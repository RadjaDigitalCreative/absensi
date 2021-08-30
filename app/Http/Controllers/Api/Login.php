<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\User;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
class Login extends Controller
{
	public function koordinat_perusahaan(Request $request)
	{
		$data = DB::table('perusahaan')
		->where('id_team', $request->id_team)
		->get();
		return response()->json([
			'perusahaan' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function koordinat_perusahaan_update(Request $request)
	{
		$data = DB::table('perusahaan')
		->where('id', $request->id)
		->update([
			'nama_perusahaan' => $request->nama_perusahaan,
			'lokasi' => $request->lokasi,
			'alamat' => $request->alamat,
			'longitude' => $request->longitude,
			'latitude' => $request->latitude,
		]);
		return response()->json([
			'perusahaan' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function koordinat_perusahaan_create(Request $request)
	{
		$data = DB::table('perusahaan')
		->insert([
			'id_team' => $request->id_team,
			'nama_perusahaan' => $request->nama_perusahaan,
			'lokasi' => $request->lokasi,
			'alamat' => $request->alamat,
			'longitude' => $request->longitude,
			'latitude' => $request->latitude,
			'created_at'   => now(),
			'updated_at'   => now(),
		]);
		return response()->json([
			'perusahaan' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function koordinat_perusahaan_delete(Request $request)
	{
		$data = DB::table('perusahaan')
		->where('id', $request->id)
		->delete();
		return response()->json([
			'perusahaan' => 'Sukses terhapus',
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function set_pegawai_perusahaan(Request $request)
	{
		$data = DB::table('users')
		->where('id', $request->id_user)
		->update([
			'perusahaan_id' => $request->id_perusahaan
		]);
		return response()->json([
			'user' => 'Sukses set lokasi',
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function pegawai(Request $request)
	{
		$data = DB::table('users')
		->join('perusahaan', 'perusahaan.id', 'users.perusahaan_id')
		->where('users.id_team', $request->id_team)
		->select([
			'users.*',
			'perusahaan.nama_perusahaan',
			'perusahaan.longitude as longitude_perusahaan',
			'perusahaan.latitude as latitude_perusahaan',
		])
		->get();
		return response()->json([
			'user' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function profile(Request $request)
	{
		if (empty($request->file('image'))) {
			$data = DB::table('users')
			->where('id', $request->user_id)
			->update([
				'name' => $request->name,
				'email' => $request->email,
			]);
			return response()->json([
				'user' => 'berhasil diupdate',
				'status_code'   => 200,
				'msg'           => 'not found',
			], 200);
		}elseif ($request->file('image')){
			$image = $request->file('image');
			$new_name = rand() . '.' . $image->getClientOriginalExtension();
			$image->move(public_path('images'), $new_name);
			$data = DB::table('users')
			->where('id', $request->user_id)
			->update([
				'name' => $request->name,
				'email' => $request->email,
				'image' => $new_name,
			]);
			return response()->json([
				'user' => 'berhasil diupdate',
				'status_code'   => 200,
				'msg'           => 'not found',
			], 200);
		}

	}
	public function login(Request $request)
	{
		$credentials = $request->only('email', 'password');
		if (Auth::attempt($credentials)) {
			$data = DB::table('users')
			->where('email' ,'=' , $credentials)
			->first();
			return response()->json([
				'success' => $data,
				'status_code'   => 200,
				'msg'           => 'success',
			], 200);
		}else{
			return response()->json([
				'error' => 'tidak ditemukan',
				'status_code'   => 401,
				'msg'           => 'unauthorized',
			], 401);
		}
	}
	public function register(Request $request){
		$data = DB::table('users')
		->where('email' ,'=' , $request->email)
		->first();
		if($data == FALSE){
			$data = new User;
			$data->name = $request->name;
			$data->email = $request->email;
			$data->notelp = $request->notelp;
			$data->level = 'owner';
			$data->password = Hash::make($request->password);
			$data->id_team = bin2hex(random_bytes(20));
			$data->save();

			$role = DB::table('perusahaan')
			->where('id_team', $data->id_team)
			->first();
			if ($role === NULL) {
				DB::table('role_payment')
				->insert([
					'user_id'   => $data->id,
					'created_at'   => now(),
					'updated_at'   => now(),
				]);
				DB::table('perusahaan')
				->insert([
					'id_team'   => $data->id_team,
					'lokasi'   => $request->lokasi,
					'alamat'   => $request->alamat,
					'nama_perusahaan'   => $request->nama_perusahaan,
					'created_at'   => now(),
					'updated_at'   => now(),
				]);
			}else{
				DB::table('perusahaan')
				->update([
					'lokasi'   => $request->lokasi,
					'alamat'   => $request->alamat,
					'nama_perusahaan'   => $request->nama_perusahaan,
					'created_at'   => now(),
					'updated_at'   => now(),
				]);
			}
			return response()->json([
				'users' => $data,
				'status_code'   => 200,
				'msg'           => 'Email disimpan',
			], 200); 
		}elseif($data == TRUE){
			return response()->json([
				'users' => 'Not Success',
				'status_code'   => 409,
				'msg'           => 'Email Sudah Ada',
			], 200); 
		}


	}
	public function koordinat_all()
	{
		$data = DB::table('users')
		->where('id_team', request()->id_team)
		->select([
			'id',
			'name',
			'email',
			'longitude',
			'latitude',
		])
		->get();
		return response()->json([
			'koordinat_semua_pegawai' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function koordinat(Request $request)
	{
		$data = DB::table('users')
		->where('users.id', $request->user_id)
		->select([
			'id',
			'name',
			'email',
			'longitude',
			'latitude',
		])
		->get();
		return response()->json([
			'koordinat_pegawai' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function koordinat_edit(Request $request)
	{
		$data = DB::table('users')
		->where('users.id', $request->user_id)
		->update([
			'longitude' => $request->longitude,
			'latitude' => $request->latitude,
		]);
		return response()->json([
			'koordinat_pegawai_edit' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}

}
