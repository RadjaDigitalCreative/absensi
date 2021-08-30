<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class Perusahaan extends Controller
{
	public function index(Request $request)
	{
		$data = DB::table('perusahaan')
		->where('id_team', $request->id_team)
		->get();
		return response()->json([
			'data_perusahaan' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function edit(Request $request)
	{
		$data = DB::table('perusahaan')
		->where('id_team', $request->id_team)
		->update([
			'nama_perusahaan' => $request->nama_perusahaan,
			'alamat' => $request->alamat,
			'lokasi' => $request->lokasi,
			'longitude' => $request->longitude,
			'latitude' => $request->latitude,
		]);
		return response()->json([
			'data_perusahaan_update' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
}
