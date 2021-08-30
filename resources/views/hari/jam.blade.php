@extends('layouts.main')
@section('content')
<?php $title ='Tambah Jam Kerja'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						Buat <strong>Jam Kerja</strong>
					</div>
					<div class="card-body card-block">
						<form action="{{ route('absen.store.jam') }}" method="post" class="form-horizontal">
							@csrf
							<div class="row form-group">
								<div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Jam Masuk (00.00 - 12.00 = AM)</label></div>
								<div class="col col-sm-6">
									<input type="time" id="input-normal" name="jam_masuk" placeholder="Jam Masuk" class="form-control">
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Jam Keluar (13.00 - 24.00 = PM)</label></div>
								<div class="col col-sm-6">
									<input type="time" id="input-normal" name="jam_keluar"  placeholder="Jam Keluar" class="form-control">
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Potongan Telat</label></div>
								<div class="col col-sm-6">
									<input type="number" id="input-normal" name="potongan"  placeholder="potongan" class="form-control">
								</div>
							</div>
							<input type="hidden" name="id_team" value="{{auth()->user()->id_team}}">
						</div>
                    <div class="card-header">
                        <strong>Jam Kerja (Hari Tertentu)</strong>
                    </div>
                    <div class="card-body card-block">
                        <form action="{{ route('absen.store.jam') }}" method="post" class="form-horizontal">
                            @csrf
                            <div class="row form-group">
                                <div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Jam Masuk (00.00 - 12.00 = AM)</label></div>
                                <div class="col col-sm-6">
                                    <input type="time" id="input-normal" placeholder="Jam Masuk" class="form-control">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Jam Keluar (13.00 - 24.00 = PM)</label></div>
                                <div class="col col-sm-6">
                                    <input type="time" id="input-normal" name="jam_keluar2"  placeholder="Jam Keluar" class="form-control">
                                </div>
                            </div>

                            <input type="hidden" name="id_team" value="{{auth()->user()->id_team}}">
                    </div>
						<div class="card-footer">
							<button type="submit" class="btn btn-primary btn-sm">
								<i class="fa fa-dot-circle-o"></i> Buat
							</button>
							<button type="reset" class="btn btn-danger btn-sm">
								<i class="fa fa-ban"></i> Reset
							</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>
@endsection
