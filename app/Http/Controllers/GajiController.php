<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class GajiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function nominal(Request $request)
    {
        DB::table('gaji_cuti')
        ->where('user_id', $request->user_id)
        ->update([
            'gaji' => $request->gaji
        ]);

        return redirect('cuti/create')->with('success', 'Nominal cuti berhasil ditambahkan');
    }
    public function filter(Request $request)
    {

        $data = DB::table("users")
        ->select(DB::raw("SUM(gaji.total) as total, users.name, gaji.created_at, gaji.id, users.id AS id_gaji, gaji_lembur.nama, gaji_lembur.gaji AS gaji_lembur"))
        ->leftJoin('gaji', function($join){
            $join->on('gaji.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_lembur', function($join){
            $join->on('gaji_lembur.id_team', '=', 'users.id_team');
        })
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->where('users.id_team', auth()->user()->id_team)
        ->where('kerja.bulan', $request->filter)
        ->groupBy("kerja.id")
        ->limit(1)
        ->get();

        $data2 = DB::table("users")
        ->select(DB::raw("SUM(potongan.total) as total, users.name"))
        ->leftJoin('potongan', function($join){
            $join->on('potongan.user_id', '=', 'users.id');
        })
        ->groupBy("users.id")
        ->get();

        $data3 = DB::table("users")
        ->select(DB::raw("COUNT(kerja.user_id) as total, jam_kerja.telat, COUNT(kerja.lembur) as total_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur"))
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->leftJoin('jam_kerja', function($join){
            $join->on('jam_kerja.id_team', '=', 'users.id_team');
        })
        ->where('kerja.status', 2)
        ->groupBy("users.id")
        ->get();

        $data4 = DB::table("absensi")
        ->join('users', 'users.id_team', 'absensi.id_team')
        ->select(DB::raw("COUNT(absensi.id) as total"))
        ->where('absensi.bulan', now()->month)
        ->where('users.id_team', auth()->user()->id_team)
        ->get();

        foreach ($data4 as $key) {
            $hari = $key->total;
        }
        
        return view('gaji.index', compact('data', 'data2', 'data3', 'hari'));
    }
    public function index(Request $request)
    {
        $data = DB::table("users")
        ->select(DB::raw("total, users.name, gaji.created_at, gaji.id, users.id AS id_gaji, gaji_lembur.nama, gaji_lembur.gaji AS gaji_lembur"))
        ->leftJoin('gaji', function($join){
            $join->on('gaji.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_lembur', function($join){
            $join->on('gaji_lembur.id_team', '=', 'users.id_team');
        })
         
        ->where('users.id_team', auth()->user()->id_team)
        ->groupBy("users.id")
        ->get();

        $data2 = DB::table("users")
        ->select(DB::raw("SUM(potongan.total) as total, users.name"))
        ->leftJoin('potongan', function($join){
            $join->on('potongan.user_id', '=', 'users.id');
        })
      
        ->groupBy("users.id")
        ->get();

        $data3 = DB::table("users")
        ->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat"))
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->leftJoin('jam_kerja', function($join){
            $join->on('jam_kerja.id_team', '=', 'users.id_team');
        })
        
        ->where('kerja.status', 2)
         ->where('kerja.bulan', now()->month)
        ->groupBy("users.id")
        ->get();

        $data4 = DB::table("absensi")
        ->join('users', 'users.id_team', 'absensi.id_team')
        ->select(DB::raw("COUNT(absensi.id) as total"))
        ->where('absensi.bulan', now()->month)
        ->where('users.id_team', auth()->user()->id_team)
        ->groupBy('users.id')
        ->get();

        foreach ($data4 as $key) {
            $hari = $key->total;
        }
        // return view('gaji.index', compact('data', 'data2', 'data3', 'hari'));

        function division($dividend, $divisor){
            if($divisor == 0){
                throw new Exception('Division by zero.');
            } else{
                $quotient = $dividend / $divisor;
                echo "<p>$dividend / $divisor = $quotient</p>";
            }
        }
        try {
            if ($hari == 0) {
                return back()->with('warning', 'Setting Absen belum ditentukan!!!');
                
            }else{
                return view('gaji.index', compact('data', 'data2', 'data3', 'hari'));

            }
        } catch (\Exception $exception) {
            return back()->with('warning', 'Setting Absen belum ditentukan!!!');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pegawai = DB::table('users')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        return view('gaji.create', compact('pegawai'));
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function lembur_store(Request $request)
    {
        $user = DB::table('gaji_lembur')
        ->where('id_team', auth()->user()->id_team)
        ->first();
        if ($user === null) {
            DB::table('gaji_lembur')
            ->insert([
                'jam_masuk_lembur' => $request->jam_lembur_masuk,
                'jam_keluar_lembur' => $request->jam_lembur_keluar,
                'nama' => $request->nama,
                'gaji' => $request->gaji,
                'id_team' => auth()->user()->id_team,
                'created_at' =>now(),
            ]);
            return redirect('/gaji')->with('success', 'Data Jam Absensi Lembur Berhasil Disimpan!');
        }else{
            DB::table('gaji_lembur')
            ->where('id_team', auth()->user()->id_team)
            ->update([
                'jam_masuk_lembur' => $request->jam_lembur_masuk,
                'jam_keluar_lembur' => $request->jam_lembur_keluar,
                'nama' => $request->nama,
                'gaji' => $request->gaji,
                'id_team' => auth()->user()->id_team,
                'created_at' =>now(),
            ]);
            return redirect('/gaji')->with('success', 'Data Jam Absensi Lembur Berhasil Diupdate!');
        }
    }
    public function store(Request $request)
    {
     $user = DB::table('gaji_lembur')
     ->where('user_id', $request->user_id)
     ->first();
     $bank = DB::table('bank')
     ->where('user_id', $request->user_id)
     ->first();

     if ($user === null) {
      DB::table('gaji_lembur')
      ->insert([
       'jam_masuk_lembur' => $request->jam_lembur_masuk,
       'jam_keluar_lembur' => $request->jam_lembur_keluar,
       'nama' => $request->nama,
       'gaji' => $request->gaji,
       'user_id' => $request->user_id,
       'id_team' => auth()->user()->id_team,
       'created_at' =>now(),
   ]);

  }else{
      DB::table('gaji_lembur')
      ->where('user_id', $request->user_id)
      ->update([
       'jam_masuk_lembur' => $request->jam_lembur_masuk,
       'jam_keluar_lembur' => $request->jam_lembur_keluar,
       'nama' => $request->nama,
       'gaji' => $request->gaji,
       'id_team' => auth()->user()->id_team,
       'user_id' => $request->user_id,
       'created_at' =>now(),
   ]);
  }
  $count  = count($request->qty);
  for ($i=0; $i < $count; $i++) { 
      if (empty($request->harga[$i])) {

      }elseif ($request->harga[$i]){
       DB::table('gaji')
       ->insert([
        'ket' => 'gaji',
        'user_id' => $request->user_id,
        'komponen'  => $request->harga[$i],
        'total' => $request->qty[$i],
        'created_at' =>now(),
        'updated_at' =>now(),
    ]);
   }
}
$count2  = count($request->jumlah);

for ($i=0; $i < $count2; $i++) { 
  if (empty($request->potongan[$i])) {

  }elseif ($request->potongan[$i]){
   DB::table('potongan')
   ->insert([
    'ket' => 'potongan',
    'user_id' => $request->user_id,
    'komponen'  => $request->potongan[$i],
    'total' => $request->jumlah[$i],
    'created_at' =>now(),
    'updated_at' =>now(),
]);
}
}
if ($bank === null) {
  DB::table('bank')
  ->insert([
   'atas_nama' => $request->atas_nama,
   'bank' => $request->bank,
   'norek' => $request->norek,
   'user_id' => $request->user_id
]);

}else{
  DB::table('bank')
  ->where('user_id', $request->user_id)
  ->update([
   'atas_nama' => $request->atas_nama,
   'bank' => $request->bank,
   'norek' => $request->norek,
]);
}
return redirect('/gaji')->with('success', 'Data Berhasil Disimpan!');
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
        $gaji = DB::table('gaji')
        ->where('user_id', $id)
        ->first();
        $old_gaji = DB::table('gaji')
        ->where('user_id', $id)
        ->get();

        $potongan = DB::table('potongan')
        ->where('user_id', $id)
        ->first();
        $old_potongan = DB::table('potongan')
        ->where('user_id', $id)
        ->get();
        $gaji_lembur = DB::table('gaji_lembur')
        ->where('user_id', $id)
        ->get();
        $bank = DB::table('bank')
        ->where('user_id', $id)
        ->first();


        return view('gaji.edit', compact('gaji', 'potongan', 'old_gaji', 'old_potongan' ,'id', 'gaji_lembur', 'bank'));
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
        DB::table('gaji')
        ->where('id', $id)
        ->delete();
        return redirect('/gaji/')->with('success', 'Data berhasil di Hapus');
    }
    public function destroy2($id)
    {
        DB::table('potongan')
        ->where('id', $id)
        ->delete();
        return redirect('/gaji')->with('success', 'Data berhasil di Hapus');
    }
    public function destroy_lembur($id)
    {
        DB::table('gaji_lembur')
        ->where('id', $id)
        ->delete();
        return redirect('/gaji/')->with('success', 'Data berhasil di Hapus');
    }

}
