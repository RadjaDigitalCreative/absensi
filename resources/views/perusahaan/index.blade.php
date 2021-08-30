@extends('layouts.main')
@section('content')
<?php $title ='Edit Pusat Perusahaan'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Edit Pusat Perusahaan</strong> 
					</div>
					<div class="card-body card-block">
						<form action="{{route('perusahaan.update')}}" method="post" class="form-horizontal">
							@csrf
							@method('POST')
							<div class="row form-group">
								<div class="col col-md-3"><label class=" form-control-label">Nama Owner</label></div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">Hay, {{ auth()->user()->name }}</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Perusahaan</label></div>
								<div class="col-12 col-md-9"><input type="text" id="text-input" value="{{ $data->nama_perusahaan}}" name="nama_perusahaan" placeholder="Nama Perusahaan" class="form-control"><small class="form-text text-muted">Ganti Nama Perusahaan</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Tempat Lokasi</label></div>
								<div class="col-12 col-md-9"><input type="text" id="text-input" value="{{ $data->lokasi}}" name="lokasi" placeholder="Tempat Lokasi"  class="form-control"><small class="help-block form-text">Ganti Nama Tempat Lokasi</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Alamat Lengkap Perusahaan</label></div>
								<div class="col-12 col-md-9"><input type="text" id="text-input" value="{{ $data->alamat}}" name="alamat" placeholder="Alamat Lengkap Perusahaan"  class="form-control"><small class="help-block form-text">Ganti Nama Alamat Perusahaan</small></div>
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