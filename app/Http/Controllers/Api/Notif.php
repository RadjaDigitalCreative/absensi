<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB; 
use Datetime;
class Notif extends Controller
{
	public function version()
	{
		$bayar = DB::table('version')
		->get();

		return response()->json([
			'version' => $bayar,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function user_list(Request $request)
	{
		$bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('users.id_team', $request->id_team)
		->select('role_payment.*','users.id AS id_pegawai', 'users.*')
		->get();

		return response()->json([
			'user_list' => $bayar,
			'tgl_hari_ini' => now(),
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function user(Request $request)
	{
		$bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('users.id', $request->user_id)
		->select('role_payment.*','users.id AS id_pegawai', 'users.*')
		->first();

		return response()->json([
			'user' => $bayar,
			'tgl_hari_ini' => now(),
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function user_status_all(Request $request)
	{
		$bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('users.id_team', $request->id_team)
		->select('role_payment.*','users.id AS id_pegawai', 'users.name')
		->get();

		return response()->json([
			'user_list' => $bayar,
			'tgl_hari_ini' => now(),
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function pembayaran(Request $request)
	{
		$bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('role_payment.pay', 2)
		->where('role_payment.dibayar', '>=', now())
		 ->select([
        'users.*',
        'role_payment.dibayar',
        'role_payment.tgl_bayar',
        'role_payment.harga',
        'role_payment.bank',
        'role_payment.pay',
        'role_payment.image',
        'role_payment.is_read',
        'role_payment.bulan',
        'role_payment.id as id_pay',
    ])
		->get();

		$konfirmasi = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('role_payment.pay', 1)
        ->where('role_payment.is_read', NULL)
         ->select([
        'users.*',
        'role_payment.dibayar',
        'role_payment.tgl_bayar',
        'role_payment.harga',
        'role_payment.bank',
        'role_payment.pay',
        'role_payment.image',
        'role_payment.is_read',
        'role_payment.bulan',
        'role_payment.id as id_pay',
    ])
		->get();

		$belum_bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('role_payment.dibayar', NULL)
		->orWhere('role_payment.dibayar', '<=' , now())
		
		 ->select([
        'users.*',
        'role_payment.dibayar',
        'role_payment.tgl_bayar',
        'role_payment.harga',
        'role_payment.bank',
        'role_payment.pay',
        'role_payment.image',
        'role_payment.is_read',
        'role_payment.bulan',
        'role_payment.id as id_pay',
    ])

		->get();

		$hitung_bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('role_payment.pay', 2)
		->count();

		return response()->json([
			'notif_belum_bayar' => $belum_bayar,
			'notif_sudah_bayar' => $bayar,
			'notif_menunggu_konfirmasi' => $konfirmasi,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function pay_konfirmasi(Request $request)
	{
		$waktu = ($request->bulan * 30)." days" ;

		$data = DB::table('role_payment')
		->where('user_id', '=', $request->user_id)
		->update([
			'pay'  => 2,
			'dibayar'  => date('Y-m-d', strtotime($waktu, strtotime(now()))),
		]);
		return response()->json([
			'pay' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function pay_konfirmasi_cancel(Request $request)
	{
		$data = DB::table('role_payment')
		->where('user_id', '=', $request->user_id)
		->update([
			'is_read'  => 1,
		]);
		return response()->json([
			'pay' => $data,
			'status_code'   => 200,
			'msg'           => 'success',
		], 200);
	}
	public function user_status(Request $request)
	{

		$bayar = DB::table('users')
		->join('role_payment', 'users.id', '=', 'role_payment.user_id')
		->where('users.id', $request->user_id)
		->first();

		$fdate = $bayar->dibayar;
		$tdate = now()->format('Y-m-d');
		$datetime1 = new DateTime($fdate);
		$datetime2 = new DateTime($tdate);
		$interval = $datetime2->diff($datetime1);
        $days = $interval->format('%a');//now do whatever you like with $days
        
        if(now()->format('Y-m-d') > $bayar->dibayar){
        	return response()->json([
        		'status_user' => $bayar,
        		'masa_pemakaian' => 'tidak_aktif',
        		'status_code'   => 200,
        		'msg'           => 'success',
        	], 200);
        }elseif(now()->format('Y-m-d') < $bayar->dibayar){
        	return response()->json([
        		'status_user' => $bayar,
        		'masa_pemakaian' => $days,
        		'status_code'   => 200,
        		'msg'           => 'success',
        	], 200);
        }
    }
    public function harga()
    {
    	$data = DB::table('role_pay')->get();
    	return response()->json([
    		'harga_pemakaian' => $data,
    		'status_code'   => 200,
    		'msg'           => 'success',
    	], 200);
    }
    public function pay_user(Request $request)
    {
    	$image = $request->file('image');
    	$image_name = rand() . '.' . $image->getClientOriginalExtension();
    	$image->move(public_path('images'), $image_name);

    	$data = DB::table('role_payment')
    	->where('role_payment.user_id', $request->user_id)
    	->update([
    		'role_payment.tgl_bayar'  => now(),
    		'role_payment.harga'  => $request->harga,
    		'role_payment.bulan'  => $request->bulan,
    		'role_payment.image'  => $image_name,
    		'role_payment.pay'  => 1,
    		'role_payment.created_at'  => now(),
    		'role_payment.updated_at'  => now(),
    	]);
    	return response()->json([
    		'bayar' => $data,
    		'status_code'   => 200,
    		'msg'           => 'success',
    	], 200);
    }
}


