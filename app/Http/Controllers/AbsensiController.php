<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

class AbsensiController extends Controller
{
    public function filter(Request $request)
    {
        $absensi = DB::table('absensi')
        ->where('bulan', $request->filter)
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $jam_kerja =  DB::table('jam_kerja')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $absensi_lembur = DB::table('absensi')
        ->join('gaji_lembur', 'gaji_lembur.id_team', 'absensi.id_team')
        ->where('absensi.id_team', auth()->user()->id_team)
        ->where('bulan', $request->filter)

        ->get();
        $lembur = DB::table('gaji_lembur')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $pegawai  = DB::table('users')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $pegawai_lembur  = DB::table('users')
        ->join('gaji_lembur', 'users.id', 'gaji_lembur.user_id')
        ->select('users.*', 'gaji_lembur.user_id')
        ->where('gaji_lembur.id_team', auth()->user()->id_team)
        ->get();
        $kerja  = DB::table('kerja')
        ->get();
        $cuti = DB::table('gaji_cuti')->where('user_id', auth()->user()->id)->get();
        $ambil_cuti = DB::table('kerja')->where('user_id', auth()->user()->id)->where('cuti', '!=' , '0')->count();
        return view('absensi.index', compact('absensi', 'pegawai', 'kerja', 'jam_kerja', 'absensi_lembur', 'lembur', 'cuti', 'ambil_cuti', 'pegawai_lembur'));
    }
    public function index()
    {
        $absensi = DB::table('absensi')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $jam_kerja =  DB::table('jam_kerja')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $absensi_lembur = DB::table('absensi')
        ->join('gaji_lembur', 'gaji_lembur.id_team', 'absensi.id_team')
        ->where('absensi.id_team', auth()->user()->id_team)
        ->get();
        $cuti = DB::table('gaji_cuti')->where('user_id', auth()->user()->id)->where('status',  '1')->get();
        $ambil_cuti = DB::table('kerja')->where('user_id', auth()->user()->id)->where('cuti', '!=' , '0')->count();
        $lembur = DB::table('gaji_lembur')
        ->where('id_team', auth()->user()->id_team)
        ->groupBy('gaji_lembur.id_team')
        ->get();
        $pegawai  = DB::table('users')
        ->where('id_team', auth()->user()->id_team)
        ->get();
        $pegawai_lembur  = DB::table('users')
        ->join('gaji_lembur', 'users.id', 'gaji_lembur.user_id')
        ->select('users.*', 'gaji_lembur.user_id')
        ->where('gaji_lembur.id_team', auth()->user()->id_team)
        ->get();
        $kerja  = DB::table('kerja')
        ->get();
        return view('absensi.index', compact('absensi', 'pegawai', 'kerja', 'jam_kerja', 'absensi_lembur', 'lembur', 'cuti', 'ambil_cuti', 'pegawai_lembur'));
    }
    public function status_cancel(Request $request, $id){ 
        DB::table('kerja')
        ->where('user_id', $request->user_id)
        ->where('date', $request->date)
        ->delete();
        return redirect('/absensi')->with('success', 'Absen Masuk Berhasil Dibatalkan!');

    }
    public function status(Request $request, $id){  
        $user = DB::table('kerja')
        ->where('user_id', $request->user_id)
        ->where('date', $request->date)
        ->first();
        $time = Carbon::now()->toTimeString();

        $telat = DB::table('users')
        ->leftJoin('kerja', function($join){
            $join->on('kerja.user_id', '=', 'users.id');
        })
        ->leftJoin('jam_kerja', function($join){
            $join->on('jam_kerja.id_team', '=', 'users.id_team');
        })
        ->where('users.id', $request->user_id)
        ->first();
        if ($time >= $telat->jam_masuk) {
            if ($user === null) {
                DB::table('kerja')
                ->insert([
                    'date' => $request->date,
                    'bulan' => $request->bulan,
                    'user_id' => $request->user_id,
                    'status' => 1,
                    'absen' => $time,
                    'absen_telat' => 1,
                    'created_at' =>now(),
                    'updated_at' =>now(),
                ]);
                return redirect('/absensi')->with('success', 'Absen Masuk Berhasil!, tapi anda telat!');

            }else{
                DB::table('kerja')
                ->where('date', $request->date)
                ->where('user_id', $request->user_id)
                ->update([
                    'date' => $request->date,
                    'bulan' => $request->bulan,
                    'user_id' => $request->user_id,
                    'status' => 2,
                    'updated_at' =>now(),
                ]);
                return redirect('/absensi')->with('success', 'Absen Keluar Berhasil!');

            }
        }elseif($time <= $telat->jam_masuk){
            if ($user === null) {
                DB::table('kerja')
                ->insert([
                    'date' => $request->date,
                    'bulan' => $request->bulan,
                    'user_id' => $request->user_id,
                    'status' => 1,
                    'absen' => $time,
                    'created_at' =>now(),
                    'updated_at' =>now(),
                ]);
                return redirect('/absensi')->with('success', 'Absen Masuk Berhasil!');

            }else{
                DB::table('kerja')
                ->where('date', $request->date)
                ->where('user_id', $request->user_id)
                ->update([
                    'date' => $request->date,
                    'bulan' => $request->bulan,
                    'user_id' => $request->user_id,
                    'status' => 2,
                    'updated_at' =>now(),
                ]);
                return redirect('/absensi')->with('success', 'Absen Keluar Berhasil!');

            }
        }
    }
    public function cuti_status(Request $request, $id){  
        $time = Carbon::now()->toTimeString();
        $user = DB::table('kerja')
        ->where('user_id', $request->user_id)
        ->where('date', $request->date)
        ->first();
        if ($user === null) {
            DB::table('kerja')
            ->insert([
                'date' => $request->date,
                'bulan' => $request->bulan,
                'user_id' => $request->user_id,
                'cuti' => 1,
                'absen' => $time,
                'created_at' =>now(),
                'updated_at' =>now(),
            ]);
            return redirect('/absensi')->with('success', 'Absen Cuti Berhasil!');

        }else{
            DB::table('kerja')
            ->where('date', $request->date)
            ->update([
                'date' => $request->date,
                'bulan' => $request->bulan,
                'user_id' => $request->user_id,
                'cuti' => 1,
                'updated_at' =>now(),
            ]);
            return redirect('/absensi')->with('success', 'Absen Cuti Berhasil!');
        }
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function lembur_status(Request $request, $id)
    {
        $jam_lembur = DB::table('gaji_lembur')
        ->leftJoin('users', function($join){
            $join->on('gaji_lembur.id_team', '=', 'users.id_team');
        })
        ->where('users.id', $request->user_id)
        ->first();

        $time = Carbon::parse($jam_lembur->jam_masuk_lembur)->format('H');
        $ami = now()->format('H');
        $lembur = $ami - $time;

        $user = DB::table('kerja')
        ->where('user_id', $request->user_id)
        ->where('date', $request->date)
        ->first();
        if ($user === null) {
            return redirect('/absensi')->with('warning', 'Anda Belum Absen Masuk Wajib!');  
        }else{
            if ($lembur <= 1) {
                return redirect('/absensi')->with('warning', 'Diluar Jam Absen Lembur!');  
            }else{
                DB::table('kerja')
                ->where('user_id', $request->user_id)
                ->where('date', $request->date)
                ->update([
                    'lembur' => $lembur,
                    'lembur_at' => now()->toTimeString(),
                ]);
                return redirect('/absensi')->with('success', 'Absen Lembur Berhasil!');  
            }
            
        }
    }


}
