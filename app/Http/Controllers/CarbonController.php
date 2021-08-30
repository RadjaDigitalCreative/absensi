<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;
use SweetAlert;


class CarbonController extends Controller
{
    public function index()
    {
        $absensi = DB::table('absensi')
            ->join('jam_kerja', 'absensi.id_team', 'jam_kerja.id_team')
            ->select(
                'absensi.*',
                'jam_kerja.jam_masuk',
                'jam_kerja.jam_keluar',
                'jam_kerja.jam_keluar2'
            )
            ->where('absensi.id_team', auth()->user()->id_team)
            ->get();
        return view('hari.index', compact('absensi'));
    }

    public function filter(Request $request)
    {
        $id = $request->filter;
        $absensi = DB::table('absensi')
            ->where('id_team', auth()->user()->id_team)
            ->where('bulan', $id)
            ->get();
        return view('hari.index', compact('absensi'));
    }

    public function create_jam()
    {
        return view('hari.jam');
    }

    public function create_jam_store(Request $request)
    {
        $user = DB::table('jam_kerja')
            ->where('id_team', $request->id_team)
            ->first();
        if ($user === NULL) {
            DB::table('jam_kerja')
                ->insert([
                    'id_team' => $request->id_team,
                    'jam_masuk' => $request->jam_masuk,
                    'jam_keluar' => $request->jam_keluar,
                    'jam_keluar2' => $request->jam_keluar2,
                    'telat' => $request->potongan,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            return redirect('absen')->with('success', 'Jam Masuk Kerja Berhasil Dimasukkan');
        } else {
            DB::table('jam_kerja')
                ->where('id_team', $request->id_team)
                ->update([
                    'jam_masuk' => $request->jam_masuk,
                    'jam_keluar' => $request->jam_keluar,
                    'jam_keluar2' => $request->jam_keluar2,
                    'telat' => $request->potongan,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            return redirect('absen')->with('success', 'Jam Masuk Kerja Berhasil Diupdate');
        }

    }

    public function create()
    {
        $workdays = array();
        $type = CAL_GREGORIAN;
        $month = date('n');
        $year = date('Y');
        $day_count = cal_days_in_month($type, $month, $year);
        for ($i = 1; $i <= $day_count; $i++) {

            $date = $year . '/' . $month . '/' . $i;
            $get_name = date('l', strtotime($date));
            $day_name = substr($get_name, 0, 3);
            if ($day_name != 'Sun') {
                $workdays[] = date("l, d F Y", strtotime($i . "-" . $month . "-" . $year));
            }
        }
        switch ($month) {
            case '1':
                $bulan = 'Januari';
                break;
            case '2':
                $bulan = 'Februari';
                break;
            case '3':
                $bulan = 'Maret';
                break;
            case '4':
                $bulan = 'April';
                break;
            case '5':
                $bulan = 'Mei';
                break;
            case '6':
                $bulan = 'Juni';
                break;
            case '7':
                $bulan = 'Juli';
                break;
            case '8':
                $bulan = 'Agustus';
                break;
            case '9':
                $bulan = 'September';
                break;
            case '10':
                $bulan = 'Oktober';
                break;
            case '11':
                $bulan = 'November';
                break;
            case '12':
                $bulan = 'Desember';
                break;
            default:
                $bulan = 'Bulan Tidak Ada';
                break;
        }
        $tahun = date("Y", strtotime($year));

        return view('hari.create', compact('workdays', 'bulan', 'tahun', 'month'));

    }

    public function store(Request $request)
    {
        $user = DB::table('absensi')
            ->where('id_team', '=', $request->id_team)
            ->first();
        if ($user === null) {
            $count = count($request->dateval);
            for ($i = 0; $i < $count; $i++) {
                DB::table('absensi')
                    ->insert([
                        'date' => $request->dateval[$i],
                        'bulan' => $request->bulan,
                        'id_team' => auth()->user()->id_team,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
            }
            return redirect('/absen')->with('success', 'Data Berhasil Disimpan!');
        } else {
            return redirect('/absen')->with('warning', 'Data Sudah Ada!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('absensi')
            ->where('id', $id)
            ->delete();
        return redirect('home')->with('success', 'Data berhasil di Hapus');

    }

    public function destroyAll()
    {
        DB::table('absensi')
            ->delete();
        return redirect('home')->with('success', 'Semua Data berhasil di Hapus');
    }
}
