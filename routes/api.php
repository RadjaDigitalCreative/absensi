<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
	return $request->user();
});
Route::post('/login', 'Api\Login@login');
Route::post('/users/list', 'Api\Notif@user_list');
Route::post('/users', 'Api\Notif@user');
Route::post('/pegawai', 'Api\Login@pegawai');
Route::post('/profile', 'Api\Login@profile');
Route::post('/register', 'Api\Login@register');

Route::post('/perusahaan', 'Api\Perusahaan@index');
Route::post('/perusahaan/edit', 'Api\Perusahaan@edit');

Route::post('/absensi', 'Api\Absen@index');
Route::post('/absensi/kirim', 'Api\Absen@kirim');
Route::post('/absensi/absen_hadir', 'Api\Absen@sudah_absen');
Route::post('/absensi/absen_hadir_all', 'Api\Absen@absen_all');
Route::post('/absensi/absen_hari_ini', 'Api\Absen@sudah_absen_hari');
Route::post('/absensi/lembur', 'Api\Absen_Lembur@index');
Route::post('/absensi/status/kirim', 'Api\Absen_Lembur@lembur_status');

Route::post('/cuti', 'Api\Cuti@index');
Route::post('/cuti/user', 'Api\Cuti@user');
Route::post('/cuti/ajukan', 'Api\Cuti@ajukan');
Route::post('/cuti/ajukan/update', 'Api\Cuti@ajukan_update');
Route::post('/cuti/ajukan/delete', 'Api\Cuti@delete_ajukan');
Route::post('/cuti/bonus', 'Api\Cuti@bonus');
Route::post('/cuti/approve', 'Api\Cuti@approve');
Route::post('/cuti/unapprove', 'Api\Cuti@unapprove');

Route::post('/rekap/gaji', 'Api\Gaji@index');

Route::get('/koordinat', 'Api\Login@koordinat_all');
Route::post('/koordinat/user', 'Api\Login@koordinat');
Route::post('/koordinat/edit', 'Api\Login@koordinat_edit');
Route::post('/koordinat/perusahaan', 'Api\Login@koordinat_perusahaan');
Route::post('/koordinat/perusahaan/update', 'Api\Login@koordinat_perusahaan_update');
Route::post('/koordinat/perusahaan/create', 'Api\Login@koordinat_perusahaan_create');
Route::post('/koordinat/perusahaan/delete', 'Api\Login@koordinat_perusahaan_delete');
Route::post('/set/pegawai/perusahaan', 'Api\Login@set_pegawai_perusahaan');


Route::post('/rekap/absen', 'Api\Absen@rekap_absen');
Route::get('/version', 'Api\Notif@version');
Route::post('reset/password', 'Api\Forgot@forgot')->name('api.login');

Route::get('/notif/pembayaran', 'Api\Notif@pembayaran');
Route::post('/pay/konfirmasi', 'Api\Notif@pay_konfirmasi');
Route::post('/pay/konfirmasi/cancel', 'Api\Notif@pay_konfirmasi_cancel');
Route::post('/pay/user', 'Api\Notif@pay_user');
Route::get('/pay/list_harga', 'Api\Notif@harga');
Route::post('/pay/user/status', 'Api\Notif@user_status');
Route::post('/pay/user/status/all', 'Api\Notif@user_status_all');




