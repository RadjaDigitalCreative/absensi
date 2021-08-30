<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class AgenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function agen_upah(Request $request)
    {
        $user = DB::table('role_upah')
        ->where('user_id', $request->user_id)
        ->first();
        if ($user === null) {
            DB::table('role_upah')
            ->insert([
                'persen' => $request->persen,
                'user_id' => $request->user_id,
                'agen_status' => 2,
                'created_at' => now(),
            ]);
        }else{
            DB::table('role_upah')
            ->where('user_id', $request->user_id)
            ->delete();
            DB::table('role_upah')
            ->insert([
                'persen' => $request->persen,
                'user_id' => $request->user_id,
                'agen_status' => 2,
                'created_at' => now(),
            ]);
        }
        return redirect('/agen')->with('success', 'Upah Berhasil dimasukkan');
    }
    public function agen()
    {
        $data = DB::table('users')
        ->join('role_payment', 'role_payment.user_id', '=', 'users.id')
        ->select('users.id', 'users.name' , 'users.notelp', 'users.email' ,'users.level', 'role_payment.image', 'role_payment.dibayar', 'role_payment.pay', 'role_payment.harga', 'role_payment.created_at', 'role_payment.updated_at', 'role_payment.bank', 'users.id_team', 'role_payment.tgl_bayar', 'users.agen', 'users.referal')
        ->get();
        $upah = DB::table('role_upah') ->get();
        $link =  DB::table ('users')
        ->groupBy('referal')
        ->get();
        return view('agen.index', compact('data', 'link', 'upah'));
    }
    public function agen_create()
    {
        $data = DB::table('users')
        ->get();
        return view('agen.create', compact('data'));
    }
    public function agen_generate(Request $request)
    {
        DB::table('users')
        ->where('id', $request->id)
        ->update([
            'agen' => 1,
            'referal' => rand(),
        ]);
        return redirect('/agen/create')->with('success', 'Kode berhasil dimasukkan');
    }
    public function agen_delete()
    {
        DB::table('users')
        ->update([
            'referal' => '',
        ]);
        return redirect('/agen/create')->with('success', 'Semua Kode berhasil dihapus');
    }
    public function index()
    {
        $data = DB::table('perusahaan')
        ->where('id_team', auth()->user()->id_team)
        ->first();
        return view('perusahaan.index', compact('data'));
    }
    public function index2()
    {
        $data = DB::table('perusahaan')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        return view('perusahaan.cabang', compact('data'));
    }
    public function create_cabang()
    {
        return view('perusahaan.cabang_create');
    }
    public function create_cabang_store(Request $request)
    {
        DB::table('perusahaan')
        ->insert([
            'lokasi'   => $request->lokasi,
            'alamat'   => $request->alamat,
            'nama_perusahaan'   => $request->nama_perusahaan,
            'id_team' => $request->id_team,
        ]);
        return redirect('cabang/perusahaan')->with('success', 'Cabang Perusahaan Berhasil Ditambahkan');
    }
    public function cabang_edit($id)
    {
        $data = DB::table('perusahaan')
        ->where('id', $id)
        ->first();
        return view('perusahaan.cabang_edit', compact('data'));
    }
    public function cabang_update(Request $request, $id)
    {
        DB::table('perusahaan')
        ->where('id', $id)
        ->update([
            'lokasi'   => $request->lokasi,
            'alamat'   => $request->alamat,
            'nama_perusahaan'   => $request->nama_perusahaan,
        ]);
        return redirect('cabang/perusahaan')->with('success', 'Cabang Perusahaan Berhasil Diupdate');
    }
    public function cabang_delete($id)
    {
        $data = DB::table('perusahaan')
        ->where('id', $id)
        ->delete();
        return redirect('cabang/perusahaan')->with('success', 'Cabang Perusahaan Berhasil Dihapus');
    }
    public function profile(Request $request)
    {
        $image = $request->file('image');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $new_name);
        $data = DB::table('users')
        ->where('id', $request->user_id)
        ->update([
            'name' => $request->nama,
            'email' => $request->email,
            'image' => $new_name,
        ]);
        return redirect('dashboard')->with('success', 'Data profile anda berhasil diupdate');
    }
    public function update(Request $request)
    {
        DB::table('perusahaan')
        ->where('id_team', $request->id_team)
        ->update([
            'lokasi'   => $request->lokasi,
            'alamat'   => $request->alamat,
            'nama_perusahaan'   => $request->nama_perusahaan,
        ]);
        return redirect('perusahaan')->with('success', 'Nama Perusahaan Berhasil Diupdate');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
