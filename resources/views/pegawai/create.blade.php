@extends('layouts.main')
@section('content')
<?php $title ='Tambah Pegawai Baru'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Tambah Pegawai Baru</strong> 
					</div>
					<div class="card-body card-block">
						<form action="{{route('pegawai.store')}}" method="post" enctype="multipart/form-data" class="form-horizontal">
							@csrf
							@method('POST')
							<div class="row form-group">
								<div class="col col-md-3"><label class=" form-control-label">Owner</label></div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">Hay, {{ auth()->user()->name }}</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Pegawai</label></div>
								<div class="col-12 col-md-9"><input type="text" id="text-input" name="name" placeholder="Nama Pegawai" class="form-control"><small class="form-text text-muted">Silahkan Masukkan Nama Pegawai</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Email Pegawai</label></div>
								<div class="col-12 col-md-9"><input type="email" id="email-input" name="email" placeholder="Email Pegawai"  class="form-control"><small class="help-block form-text">Silahkan Masukkan Email Pegawai</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Password Pegawai</label></div>
								<div class="col-12 col-md-9"><input type="password" id="password-input" name="password" placeholder="Password Pegawai"  class="form-control"><small class="help-block form-text">Silahkan Masukkan Password Pegawai</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="text-input" class=" form-control-label">No. Telepon</label></div>
								<div class="col-12 col-md-9"><input type="number" id="text-input" name="notelp" placeholder="No. Telepon" class="form-control"><small class="form-text text-muted">Silahkan Masukkan No. Telepon Pegawai</small></div>
							</div>
							<input type="hidden" name="id_team" value="{{auth()->user()->id_team}}">
							<!-- <div class="row form-group">
								<div class="col col-md-3"><label for="file-input" class=" form-control-label">Foto Anda</label></div>
								<div class="col-12 col-md-9">
									<input type="file" name="image" >
								</div>
							</div> -->
						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-primary btn-sm">
								<i class="fa fa-dot-circle-o"></i> Simpan
							</button>
							<button type="reset" class="btn btn-danger btn-sm">
								<i class="fa fa-ban"></i> Batal
							</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>
@endsection