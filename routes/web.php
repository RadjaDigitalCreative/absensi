<?php

Auth::routes();
Route::get('auth/google', 'Auth\GoogleController@redirectToGoogle');
Route::get('auth/google/callback', 'Auth\GoogleController@handleGoogleCallback');

Route::get('/register/referal/{id}', 'Auth\RegisterController@referal')->name('home');

Route::group(['middleware' => 'auth', 'verified'], function () {
	Route::get('/home', 'DashboardController@index')->name('home');
	Route::get('/', 'DashboardController@index')->name('absen');
	Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

	Route::get('/notifikasi', 'DashboardController@notifikasi')->name('notifikasi');

	// route hari kerja
	Route::get('/absen', 'CarbonController@index')->name('absen');
	Route::post('/absen/filter', 'CarbonController@filter')->name('absen.filter');
	Route::get('/absen/create', 'CarbonController@create')->name('absen.create');
	Route::get('/absen/create/jam', 'CarbonController@create_jam')->name('absen.create.jam');
	Route::post('/absen/create/jam', 'CarbonController@create_jam_store')->name('absen.store.jam');
	Route::post('/absen/create', 'CarbonController@store')->name('absen.store');
	Route::get('/absen/destroyAll', 'CarbonController@destroyAll')->name('absen.destroyAll');
	Route::delete('/absen/delete/{id}', 'CarbonController@destroy')->name('absen.destroy');

	// route pegawai
	Route::get('/pegawai', 'PegawaiController@index')->name('pegawai');
	Route::get('/pegawai/create', 'PegawaiController@create')->name('pegawai.create');
	Route::post('/pegawai/create', 'PegawaiController@store')->name('pegawai.store');
	Route::get('/pegawai/edit/{id}', 'PegawaiController@edit')->name('pegawai.edit');
	Route::get('/pegawai/view/{id}', 'PegawaiController@view')->name('pegawai.view');
	Route::put('/pegawai/update/{id}', 'PegawaiController@update')->name('pegawai.update');
	Route::delete('/pegawai/delete/{id}', 'PegawaiController@destroy')->name('pegawai.destroy');

	// route absensi
	Route::get('/absensi', 'AbsensiController@index')->name('absensi');
	Route::post('/absensi/filter', 'AbsensiController@filter')->name('absensi.filter');
	Route::post('/absensi/status/{id}', 'AbsensiController@status')->name('absensi.status');
	Route::post('/absensi/status/cancel/{id}', 'AbsensiController@status_cancel')->name('absensi.status.cancel');
	Route::post('/absensi/cutistatus/{id}', 'AbsensiController@cuti_status')->name('absensi.cuti.status');
	Route::post('/absensi/lembur/status/{id}', 'AbsensiController@lembur_status')->name('absensi.lembur.status');

	// route gaji
	Route::get('/gaji', 'GajiController@index')->name('gaji');
	Route::post('/nominal/cuti', 'GajiController@nominal')->name('nominal.cuti');
	Route::post('/gaji/filter', 'GajiController@filter')->name('gaji.filter');
	Route::get('/gaji/create', 'GajiController@create')->name('gaji.create');
	Route::post('/gaji/store', 'GajiController@store')->name('gaji.store');
	Route::post('/gaji/lembur/store', 'GajiController@lembur_store')->name('gaji.lembur.store');
	Route::get('/gaji/edit/{id}', 'GajiController@edit')->name('gaji.edit');
	Route::put('/gaji/update/{id}', 'GajiController@update')->name('gaji.update');
	Route::delete('/gaji/delete/{id}', 'GajiController@destroy')->name('gaji.destroy');
	Route::delete('/gaji/lembur/delete/{id}', 'GajiController@destroy_lembur')->name('gaji.lembur.destroy');
	Route::delete('/gaji/delete2/{id}', 'GajiController@destroy2')->name('gaji.destroy2');


	// route rekap
	Route::get('/rekap', 'RekapController@index')->name('rekap');
	Route::post('/rekap/filter', 'RekapController@filter')->name('rekap.filter');
	Route::get('/rekap/view/{id}', 'RekapController@view')->name('rekap.view');
	Route::get('/rekap/print/{id}', 'RekapController@print')->name('rekap.print');

	// route users
	Route::get('/users', 'UsersController@index')->name('users');
	Route::post('/users/status', 'UsersController@status')->name('users.status');
	Route::post('/users/setlokasi', 'UsersController@set_lokasi')->name('users.set_lokasi');
	Route::post('/users/pay', 'UsersController@pay')->name('users.pay');
	Route::post('/users/pay2', 'UsersController@pay2')->name('users.pay2');
	Route::post('/users/pay/konfirmasi', 'UsersController@pay_konfirmasi')->name('users.pay.konfirmasi');
	Route::get('/users/pay/konfirmasi/cancel/{id}', 'UsersController@konfirmasi_cancel')->name('users.pay.konfirmasi.cancel');
	Route::delete('/users/destroy/{id}', 'UsersController@destroy')->name('users.destroy');

	Route::get('/harga', 'UsersController@harga')->name('harga.create');
	Route::post('/harga/store', 'UsersController@harga_store')->name('harga.store');
	Route::delete('/harga/delete/{id}', 'UsersController@harga_delete')->name('harga.destroy');
	Route::get('/harga/deleteAll}', 'UsersController@harga_deleteAll')->name('harga.deleteAll');


	// route cuti
	Route::get('/cuti', 'CutiController@index')->name('cuti');
	Route::get('/cuti/create', 'CutiController@create')->name('cuti.create');
	Route::post('/cuti/store', 'CutiController@store')->name('cuti.store');
	Route::get('/cuti/status/approve/{id}', 'CutiController@approve')->name('cuti.approve');
	Route::get('/cuti/status/unapprove/{id}', 'CutiController@unapprove')->name('cuti.unapprove');
	Route::delete('/cuti/delete/{id}', 'CutiController@delete')->name('cuti.destroy');


	// route agen
	Route::get('/agen', 'AgenController@agen')->name('agen');
	Route::get('/agen/create', 'AgenController@agen_create')->name('agen.create');
	Route::post('/agen/code/generate', 'AgenController@agen_generate')->name('agen.code.generate');
	Route::post('/agen/upah', 'AgenController@agen_upah')->name('agen.upah');
	Route::get('/agen/code/delete', 'AgenController@agen_delete')->name('agen.code.delete');

	// route users
	Route::get('/perusahaan', 'AgenController@index')->name('perusahaan');
	Route::get('/cabang/perusahaan', 'AgenController@index2')->name('cabang_perusahaan');
	Route::get('/cabang/perusahaan/create', 'AgenController@create_cabang')->name('cabang.perusahaan.create');
	Route::post('/cabang/perusahaan/store', 'AgenController@create_cabang_store')->name('cabang.perusahaan.store');
	Route::get('/cabang/perusahaan/edit/{id}', 'AgenController@cabang_edit')->name('cabang.perusahaan.edit');
	Route::post('/cabang/perusahaan/update/{id}', 'AgenController@cabang_update')->name('cabang.perusahaan.update');
	Route::delete('/cabang/perusahaan/delete/{id}', 'AgenController@cabang_delete')->name('cabang.perusahaan.delete');
	Route::post('/perusahaan/update', 'AgenController@update')->name('perusahaan.update');
	Route::post('/profile', 'AgenController@profile')->name('profile');

});
