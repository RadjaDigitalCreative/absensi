@extends('layouts.main')
@section('content')
<?php $title ='Edit Pegawai'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Basic Form</strong> Elements
					</div>
					<div class="card-body card-block">
						<form action="{{route('pegawai.update', $pegawai->id)}}" method="post" enctype="multipart/form-data" class="form-horizontal">
							@csrf
							@method('PUT')
							<div class="row form-group">
								<div class="col col-md-3"><label class=" form-control-label">Anggota</label></div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">Hay, {{ auth()->user()->name }}</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Anda</label></div>
								<div class="col-12 col-md-9"><input type="text" id="text-input" name="name" value="{{$pegawai->name}}" class="form-control"><small class="form-text text-muted">Silahkan Masukkan Nama Anda</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Email Anda</label></div>
								<div class="col-12 col-md-9"><input type="email" id="email-input" name="email" value="{{$pegawai->email}}" class="form-control"><small class="help-block form-text">Silahkan Masukkan Email Anda</small></div>
							</div>

							<div class="row form-group">
								<div class="col col-md-3"><label for="file-input" class=" form-control-label">Foto Anda</label></div>
								<div class="col-12 col-md-9">
									<img width="20%" height="10%" src="{{ URL::to('/') }}/images/{{ $pegawai->image }}"><br>
									<input type="file" id="file-input" name="image" class="form-control-file">
									<input type="hidden" name="hidden_image" value="{{ $pegawai->image }}" />
								</div>
							</div>
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