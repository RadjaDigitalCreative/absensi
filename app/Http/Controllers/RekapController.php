<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class RekapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function filter(Request $request)
    {
        $data = DB::table("users")
        ->select(DB::raw("SUM(gaji.total) as total, users.name, gaji.created_at, gaji.id, users.id AS id_pegawai, gaji_lembur.nama, gaji_lembur.gaji AS gaji_lembur, bank.atas_nama , bank.norek, bank.bank"))
        ->leftJoin('gaji', function($join){
            $join->on('gaji.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_lembur', function($join){
            $join->on('gaji_lembur.id_team', '=', 'users.id_team');
        })
        ->leftJoin('bank', function($join){
            $join->on('bank.user_id', '=', 'users.id');
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
        ->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat, gaji_cuti.hari, gaji_cuti.gaji, COUNT(kerja.cuti) as cuti"))
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_cuti', function($join){
            $join->on('gaji_cuti.user_id', '=', 'users.id');
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
        return view('rekap.index', compact('data', 'data2', 'data3', 'hari'));
    }
    public function index()
    {
        $data = DB::table("users")
        ->select(DB::raw(" total, users.name, gaji.created_at, gaji.id, users.id AS id_pegawai, users.id_team, gaji_lembur.nama, gaji_lembur.gaji AS gaji_lembur, bank.atas_nama , bank.norek, bank.bank"))
        ->leftJoin('gaji', function($join){
            $join->on('gaji.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_lembur', function($join){
            $join->on('gaji_lembur.id_team', '=', 'users.id_team');
        })
        ->leftJoin('bank', function($join){
            $join->on('bank.user_id', '=', 'users.id');
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
        ->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat, gaji_cuti.hari, gaji_cuti.gaji, COUNT(kerja.cuti) as cuti"))
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->leftJoin('gaji_cuti', function($join){
            $join->on('gaji_cuti.user_id', '=', 'users.id');
        })
        ->leftJoin('jam_kerja', function($join){
            $join->on('jam_kerja.id_team', '=', 'users.id_team');
        })
                 ->where('kerja.bulan', now()->month)
        ->where('kerja.status', 2)
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
                return view('rekap.index', compact('data', 'data2', 'data3', 'hari'));

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
    public function view($id)
    {
    try {
     $pegawai = DB::table('users')
     ->where('id', $id)
     ->first();

     $data = DB::table("users")
     ->select(DB::raw("total, users.name, gaji.created_at, gaji.id, gaji_lembur.gaji AS total_lembur, bank.atas_nama , bank.norek, bank.bank"))
     ->leftJoin('gaji', function($join){
        $join->on('gaji.user_id', '=', 'users.id');
    })
     ->leftJoin('gaji_lembur', function($join){
        $join->on('gaji_lembur.id_team', '=', 'users.id_team');
    })
     ->leftJoin('bank', function($join){
        $join->on('bank.user_id', '=', 'users.id');
    })
     ->where('users.id', $id)
     ->where('users.id_team', auth()->user()->id_team)
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
     ->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.lembur) as jumlah_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->leftJoin('jam_kerja', function($join){
        $join->on('jam_kerja.id_team', '=', 'users.id_team');
    })
     ->groupBy("users.id")
                     ->where('kerja.bulan', now()->month)
     ->where('kerja.status', 2)
     ->where('users.id', $id)
     ->first();

     $data4 = DB::table("absensi")
     ->join('users', 'users.id_team', 'absensi.id_team')
     ->select(DB::raw("COUNT(absensi.id) as total"))
     ->where('users.id_team', auth()->user()->id_team)
     ->where('absensi.bulan', now()->month)
     ->groupBy('users.id')
     ->first();

     $data5 = DB::table("users")
     ->leftJoin('gaji', function($join){
        $join->on('gaji.user_id', '=', 'users.id');
    })
     ->where('users.id', $id)
     ->get();

     $data6 = DB::table("users")
     ->leftJoin('potongan', function($join){
        $join->on('potongan.user_id', '=', 'users.id');
    })
     ->where('users.id', $id)
     ->get();



     $hasil2 = $data->total / $data4->total;
     $hasil3 = $data3->total_lembur * $data->total_lembur;
     $hasil4 = $data3->total_telat * $data3->telat;
     $cuti = DB::table('gaji_cuti')->where('user_id', auth()->user()->id)->where('status',  '1')->get();
     $ambil_cuti = DB::table('kerja')->where('user_id', auth()->user()->id)->where('cuti', '!=' , '0')->count();
     $a = 0;
     $b = 0;
     foreach ($cuti as $key) {
         $a = $key->hari;
         $b = $key->gaji;
     }
     $hasil5 = $a;
     $hasil6 = $ambil_cuti;
     $hasil7 = ($a - $ambil_cuti) * $b;
     $hasil = (((($data->total - $data2->total ) / $data4->total) * $data3->total) + ($data3->total_lembur * $data->total_lembur) - ($data3->total_telat * $data3->telat) + $hasil7);

     return view('rekap.view', compact('hasil4', 'pegawai', 'data', 'data2', 'data3', 'data4', 'hasil', 'hasil2', 'data5', 'data6', 'id', 'hasil3', 'hasil5', 'hasil6', 'hasil7'));
    }catch (\Exception $exception) {
            return back()->with('warning', 'Anda Belum Mendapatkan gaji, kasihann!!!');
    }
 }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function print($id)
    {
        $pegawai = DB::table('users')
     ->where('id', $id)
     ->first();

     $data = DB::table("users")
     ->select(DB::raw("total, users.name, gaji.created_at, gaji.id, gaji_lembur.gaji AS total_lembur, bank.atas_nama , bank.norek, bank.bank"))
     ->leftJoin('gaji', function($join){
        $join->on('gaji.user_id', '=', 'users.id');
    })
     ->leftJoin('gaji_lembur', function($join){
        $join->on('gaji_lembur.id_team', '=', 'users.id_team');
    })
     ->leftJoin('bank', function($join){
        $join->on('bank.user_id', '=', 'users.id');
    })
     ->where('users.id', $id)
     ->where('users.id_team', auth()->user()->id_team)
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
     ->select(DB::raw("COUNT(kerja.user_id) as total, SUM(kerja.lembur) as total_lembur, COUNT(kerja.lembur) as jumlah_lembur, COUNT(kerja.absen_telat) as total_telat, users.name, kerja.bulan, kerja.lembur, jam_kerja.telat"))
     ->leftJoin('kerja', function($join){
        $join->on('kerja.user_id', '=', 'users.id');
    })
     ->leftJoin('jam_kerja', function($join){
        $join->on('jam_kerja.id_team', '=', 'users.id_team');
    })
     ->groupBy("users.id")
                     ->where('kerja.bulan', now()->month)
     ->where('kerja.status', 2)
     ->where('users.id', $id)
     ->first();

     $data4 = DB::table("absensi")
     ->join('users', 'users.id_team', 'absensi.id_team')
     ->select(DB::raw("COUNT(absensi.id) as total"))
     ->where('users.id_team', auth()->user()->id_team)
     ->where('absensi.bulan', now()->month)
     ->groupBy('users.id')
     ->first();
     
        $data5 = DB::table("users")
        ->leftJoin('gaji', function($join){
            $join->on('gaji.user_id', '=', 'users.id');
        })
        ->where('users.id', $id)
        ->get();

        $data6 = DB::table("users")
        ->leftJoin('potongan', function($join){
            $join->on('potongan.user_id', '=', 'users.id');
        })
        ->where('users.id', $id)
        ->get();

        $hasil = (((($data->total - $data2->total ) / $data4->total) * $data3->total) + ($data3->total_lembur * $data->total_lembur));
        $hasil2 = $data->total / $data4->total;
        $hasil3 = $data3->total_lembur * $data->total_lembur;
        return view('rekap.print', compact( 'pegawai', 'data', 'data2', 'data3', 'data4', 'hasil', 'hasil2', 'data5', 'data6', 'id', 'hasil3'));
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
        //
    }
}
