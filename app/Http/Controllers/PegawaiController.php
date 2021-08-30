<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;

class PegawaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pegawai = DB::table('users')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        return view('pegawai.index', compact('pegawai'));
    }

    public function create()
    {
        return view('pegawai.create');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('users')
        ->insert([
            'name' => $request->name,
            'email' => $request->email,
            'id_team' => $request->id_team,
            'level' => 'pegawai',
            'notelp' => $request->notelp,
            'password' => Hash::make($request->password),
            // 'image'              =>         $new_name,
            'created_at'    => now(),
            'updated_at'    => now()
        ]);
        $id = DB::getPdo()->lastInsertId();
        DB::table('role_payment')
        ->insert([
            'user_id' => $id,
            
                'dibayar' => date('Y-m-d', strtotime('+30 days', strtotime(now()))),
                'tgl_bayar' => now(),
                'pay' =>  2,
                'bulan' =>  1,
                'created_at'   => now(),
                'updated_at'   => now(),

        ]);
        return redirect('/users')->with('success', 'Data Berhasil Disimpan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function view($id)
    {
     $pegawai = DB::table('users')
     ->where('id', $id)
     ->first();

     $data = DB::table("users")
     ->select(DB::raw("SUM(gaji.total) as total, users.name, gaji.created_at, gaji.id"))
     ->leftJoin('gaji', function($join){
        $join->on('gaji.user_id', '=', 'users.id');
    })
     ->where('users.id', $id)
     ->groupBy("users.id")
     ->first();

     $data2 = DB::table("users")
     ->select(DB::raw("SUM(potongan.total) as total, users.name"))
     ->leftJoin('potongan', function($join){
        $join->on('potongan.user_id', '=', 'users.id');
    })
     ->groupBy("users.id")
     ->where('users.id', $id)
     ->first();

     $data3 = DB::table("users")
     ->select(DB::raw("COUNT(kerja.user_id) as total, users.name"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->groupBy("users.id")
     ->where('users.id', $id)
     ->first();

     $data4 = DB::table("absensi")
     ->select(DB::raw("COUNT(id) as total"))
     ->first();

     $bulan = DB::table("users")
     ->select(DB::raw("COUNT(kerja.user_id) as total, users.name, kerja.bulan"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->groupBy("kerja.bulan")
     ->where('users.id', $id)
     ->where('kerja.status', 2)
     ->get();

     $gajian = DB::table("users")
     ->select(DB::raw("COUNT(kerja.user_id) as total, users.name, kerja.bulan, users.id as id_pegawai"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->groupBy("kerja.bulan")
     ->where('users.id', $id)
     ->get();

     $gaji = DB::table("users")
     ->select(DB::raw("COUNT(kerja.user_id) as total, users.name, kerja.bulan"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->groupBy("kerja.bulan")
     ->where('users.id', $id)
     ->first();

     $hasil = ((($data->total - $data2->total ) / $data4->total) * $data3->total);
     $hasil2 = ((($data->total - $data2->total ) / $data4->total) * $gaji->total);
     return view('pegawai.view', compact('pegawai', 'data', 'data2', 'data3', 'data4', 'hasil', 'bulan', 'hasil2' ,'gajian'));

 }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $pegawai = DB::table('users')
        ->where('id', $id)
        ->first();

        return view('pegawai.edit', compact('pegawai'));
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
        $image_name = $request->hidden_image;
        $image = $request->file('image');
        if($image != '')
        {
            $image_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $image_name);
        }

        DB::table('users')
        ->where('id', $id)
        ->update([
            'name' => $request->name,
            'email' => $request->email,
            'image'              =>         $image_name,
        ]);

        return redirect('/pegawai')->with('success', 'Data Berhasil Diupdate!');

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
        DB::table('gaji')
        ->where('user_id', $id)
        ->delete();
        DB::table('potongan')
        ->where('user_id', $id)
        ->delete();
        DB::table('kerja')
        ->where('user_id', $id)
        ->delete();
        return redirect('/pegawai')->with('success', 'Data berhasil di Hapus');

    }
}
