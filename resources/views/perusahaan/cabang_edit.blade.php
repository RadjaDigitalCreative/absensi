@extends('layouts.main')
@section('content')
<?php $title ='Edit Cabang Perusahaan'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Edit Cabang Perusahaan</strong> 
					</div>
					<div class="card-body card-block">
						<form action="{{route('cabang.perusahaan.update', $data->id)}}" method="post" enctype="multipart/form-data" class="form-horizontal">
							@csrf
							@method('POST')
							
							<div class="row form-group">
								<div class="col col-md-3"><label for="text-input" class=" form-control-label">Cabang Perusahaan</label></div>
								<div class="col-12 col-md-9"><input value="{{$data->nama_perusahaan}}" type="text" id="text-input" name="nama_perusahaan" placeholder="Cabang Perusahaan" class="form-control"><small class="form-text text-muted">Silahkan Masukkan Cabang Perusahaan</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Lokasi Cabang</label></div>
								<div class="col-12 col-md-9"><input value="{{$data->lokasi}}" type="text" id="text-input" name="lokasi" placeholder="Lokasi Cabang"  class="form-control"><small class="help-block form-text">Silahkan Masukkan Lokasi Cabang</small></div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3"><label for="email-input" class=" form-control-label">Alamat Lengkap</label></div>
								<div class="col-12 col-md-9">
									<input type="text" name="alamat" value="{{$data->alamat}}" placeholder="Alamat Lengkap Cabang Perusahaan"  class="form-control"></input>
									<small class="help-block form-text">Silahkan Masukkan Alamat Lengkap Cabang Perusahaan</small></div>
								</div>

								<input type="hidden" name="id_team" value="{{auth()->user()->id_team}}">
								<div class="row form-group">
									<div class="col col-md-3"><label for="email-input" class=" form-control-label">Longitude</label></div>
									<div class="col-12 col-md-9"><input type="text" placeholder="Silahkan Setting Longitude Di Aplikasi"  class="form-control" disabled=""></div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3"><label for="email-input" class=" form-control-label">Latitude</label></div>
									<div class="col-12 col-md-9"><input type="text" placeholder="Silahkan Setting Latitude Di Aplikasi"  class="form-control" disabled=""></div>
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