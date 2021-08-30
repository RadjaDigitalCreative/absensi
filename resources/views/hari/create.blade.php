@extends('layouts.main')
@section('content')
<?php $title ='Tambah Hari Kerja'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						Buat <strong>Hari Kerja</strong>
					</div>
					<div class="card-body card-block">
						<form action="{{ route('absen.store') }}" method="post" class="form-horizontal">
							@csrf
							<div class="row form-group">
								<div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Bulan</label></div>
								<div class="col col-sm-6"><input type="text" id="input-normal" name="input-normal" readonly="" value="{{$bulan}}" placeholder="Normal" class="form-control"></div>
							</div>
							<div class="row form-group">
								<div class="col col-sm-5"><label for="input-normal" class=" form-control-label">Tahun</label></div>
								<div class="col col-sm-6"><input type="text" id="input-normal" name="input-normal" readonly="" value="{{$tahun}}" placeholder="Normal" class="form-control"></div>
							</div>
						</div>
						@foreach ($workdays as $key => $dateval) 
						<input type="hidden" name="dateval[]" value="{{$dateval}}">
						@endforeach
						<input type="hidden" name="bulan" value="{{$month}}">

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