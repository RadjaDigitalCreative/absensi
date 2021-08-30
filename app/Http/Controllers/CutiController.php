<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class CutiController extends Controller
{
    public function index()
    {
        $user = DB::table('users')->where('id_team', auth()->user()->id_team)->get();
        $cuti = DB::table('gaji_cuti')
        ->join('users', 'gaji_cuti.user_id', 'users.id')

        ->select('gaji_cuti.*', 'users.name')
        ->where('id_team', auth()->user()->id_team)
        ->groupBy('users.id')
        ->get();
        $tanggal = DB::table('gaji_cuti')
        ->join('users', 'gaji_cuti.user_id', 'users.id')
        ->select('gaji_cuti.*', 'users.name')
        ->where('id_team', auth()->user()->id_team)

        ->get();

        $hitung_tanggal = DB::table('gaji_cuti')
        ->join('users', 'gaji_cuti.user_id', 'users.id')
        ->select('gaji_cuti.*', 'users.name')
        ->where('id_team', auth()->user()->id_team)
        ->count();

        return view('cuti.index', compact('user', 'cuti', 'tanggal', 'hitung_tanggal'));
    }

    public function create()
    {
        $user = DB::table('users')->where('id_team', auth()->user()->id_team)->get();
        $cuti = DB::table('setting_cuti')->join('users', 'setting_cuti.user_id', 'users.id')
        ->where('id_team', auth()->user()->id_team)
        ->select('setting_cuti.*', 'users.name')
        ->get();

        return view('cuti.create', compact('user', 'cuti'));
    }

    public function store(Request $request)
    {
        DB::table('setting_cuti')
        ->insert([
            'user_id' => $request->user_id,
            'hari' => $request->hari,
            'gaji' => $request->nominal,
            'created_at' =>now(),
            'updated_at' =>now(),
        ]);
        return redirect('/cuti/create')->with('success', 'Data Cuti Pegawai Berhasil Disimpan!');

    }
    public function store_ajukan(Request $request)
    {
        DB::table('gaji_cuti')
        ->insert([
            'user_id' => $request->user_id,
            'tgl_mulai_cuti' => $request->tgl_mulai,
            'tgl_akhir_cuti' => $request->tgl_akhir,
            'hari' => $request->hari,
            'keperluan' => $request->keperluan,
            'created_at' =>now(),
            'updated_at' =>now(),
        ]);
        return redirect('/cuti/create')->with('success', 'Data Cuti Pegawai Berhasil Disimpan!');

    }

    public function approve($id)
    {
        DB::table('gaji_cuti')
        ->where('id_cuti', $id)
        ->update([
            'status' => 1
        ]);
        return redirect('/cuti')->with('success', 'Data Cuti berhasil diapprove!');
    }
    public function unapprove($id)
    {
        DB::table('gaji_cuti')
        ->where('id_cuti', $id)
        ->update([
            'status' => 0
        ]);
        return redirect('/cuti')->with('success', 'Data Cuti berhasil diunapprove!');

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
    public function delete($id)
    {
        DB::table('gaji_cuti')
        ->where('id', $id)
        ->delete();
        return redirect('/cuti/create')->with('success', 'Data Cuti berhasil dihapus!');
    }
}
