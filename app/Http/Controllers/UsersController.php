<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use DateTime;
class UsersController extends Controller
{
    public function status(Request $request)
    {
        DB::table('users')->where('id', $request->user_id)->update([
            'is_sales' =>1
        ]);
        return redirect('/users')->with('success', 'Sukses menjadikan manusia itu sebagai sales');

    }
    public function konfirmasi_cancel($id)
    {
        DB::table('role_payment')
        ->where('user_id' , $id)
        ->update([
            'is_read' => 1
        ]);
        return redirect('notifikasi')->with('success', 'Berhasil Batalkan Konfirmasi');
    }
    public function set_lokasi(Request $request)
    {
        DB::table('users')
        ->where('id' , $request->id)
        ->update([
            'perusahaan_id' => $request->perusahaan_id
        ]);
        return redirect('users')->with('success', 'Berhasil set lokasi');
    }
    public function index()
    {
        $data = DB::table('users')
        ->join('role_payment', 'role_payment.user_id', '=', 'users.id')
        ->leftJoin('perusahaan', 'perusahaan.id', '=', 'users.perusahaan_id')
        ->select('users.id', 'users.name','users.notelp', 'users.level','users.email', 'role_payment.image', 'role_payment.dibayar', 'role_payment.pay', 'role_payment.harga','role_payment.bulan', 'role_payment.created_at', 'role_payment.updated_at', 'role_payment.bank', 'users.id_team', 'role_payment.tgl_bayar', 'users.perusahaan_id', 'perusahaan.nama_perusahaan')
        ->groupBy('users.id')
        ->get();
        $perusahaan = DB::table('perusahaan')->where('id_team', auth()->user()->id_team)->get();
        $harga = DB::table('role_pay')->get();
        return view('users.index', compact('data', 'harga', 'perusahaan'));
    }
    public function pay(Request $request)
    {
        $waktu = ($request->bulan * 30)." days" ;
        $harga = DB::table('role_pay')
        ->where('bulan', $request->bulan)
        ->first();

        $image = $request->file('image');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $new_name);
        DB::table('role_payment')
        ->where('user_id', '=', $request->user_id)
        ->update([
            'tgl_bayar' => now(),
            'harga' => $harga->harga,
            'bulan' => $harga->bulan,
            'pay' => 1,
            'image' => $new_name,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect('/users')->with('success', 'Data berhasil dikirim. Silahkan tunggu dikonfirmasi');
    }
    public function pay2(Request $request)
    {
        $waktu = ($request->bulan * 30)." days" ;
        $harga = DB::table('role_pay')
        ->where('bulan', $request->bulan)
        ->first();

        $image = $request->file('image');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $new_name);
        DB::table('role_payment')
        ->where('user_id', '=', $request->user_id)
        ->update([
            'tgl_bayar' => now(),
            'harga' => $harga->harga,
            'bulan' => $harga->bulan,
            'pay' => 1,
            'image' => $new_name,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect('/')->with('success', 'Data berhasil dikirim. Silahkan tunggu dikonfirmasi');
    }
    public function pay_konfirmasi(Request $request)
    {
        $waktu = ($request->bulan * 30)." days" ;

        DB::table('role_payment')
        ->where('user_id', '=', $request->user_id)
        ->update([
            'pay'  => 2,
            'dibayar'  => date('Y-m-d', strtotime($waktu, strtotime(now()))),
        ]);
        return redirect('/users')->with('success', 'Data berhasil dikonfirmasi');
    }

    public function harga()
    {
        $data = DB::table('role_pay')
        ->get();
        return view('users.harga', compact('data'));
    }
    public function harga_delete($id)
    {
        $data = DB::table('role_pay')
        ->where('id', $id)
        ->delete()
        ->get();
        return redirect('/harga')->with('success', 'Data Harga Berhasil Dihapus!');

    }
    public function harga_store(Request $request)
    {
        $count  = count($request->harga);
        for ($i=0; $i < $count; $i++) {
            $user = DB::table('role_pay')
            ->where('bulan', $request->bulan[$i])
            ->first();
            if ($user === NULL) {
                DB::table('role_pay')
                ->insert([
                    'bulan' => $request->bulan[$i],
                    'harga'  => $request->harga[$i],
                    'created_at' =>now(),
                    'updated_at' =>now(),
                ]);
            }else{
                DB::table('role_pay')
                ->where('bulan', $request->bulan[$i])
                ->update([
                    'harga'  => $request->harga[$i],
                    'created_at' =>now(),
                    'updated_at' =>now(),
                ]);
            }

        }
        return redirect('/harga')->with('success', 'Data Harga Berhasil Disimpan!');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function harga_deleteAll()
    {
        DB::table('role_pay')
        ->delete();
        return redirect('/harga')->with('success', 'Data Harga Berhasil Dihapus Semua!');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('users')
        ->where('id', $id)
        ->delete();
        DB::table('role_payment')
        ->where('user_id', $id)
        ->delete();
        return redirect('/users')->with('success', 'Data Harga Berhasil Dihapus Semua!');
    }
}
