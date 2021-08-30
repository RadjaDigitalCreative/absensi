@extends('layouts.main')
<?php $title ='Beranda'; 
function rupiah($m)
{
	$rupiah = "Rp ".number_format($m,0,",",".").",-";
	return $rupiah;
}
?>

@section('content')
<div class="content mt-3">

	<div class="col-sm-6 col-lg-3">
		<div class="card text-white bg-flat-color-1">
			<div class="card-body pb-0">
				<div class="dropdown float-right">
					<button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton1" data-toggle="dropdown">
						<i class="fa fa-cog"></i>
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="dropdown-menu-content">
							<a class="dropdown-item" href="#">Action</a>
							<a class="dropdown-item" href="#">Another action</a>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<h4 class="mb-0">
					<span class="count">10468</span>
				</h4>
				<p class="text-light">Members online</p>

				<div class="chart-wrapper px-0" style="height:70px;" height="70">
					<canvas id="widgetChart1"></canvas>
				</div>

			</div>

		</div>
	</div>
	<div class="col-sm-6 col-lg-3">
		<div class="card text-white bg-flat-color-1">
			<div class="card-body pb-0">
				<div class="dropdown float-right">
					<button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton1" data-toggle="dropdown">
						<i class="fa fa-cog"></i>
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="dropdown-menu-content">
							<a class="dropdown-item" href="#">Action</a>
							<a class="dropdown-item" href="#">Another action</a>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<h4 class="mb-0">
					<span class="count">10468</span>
				</h4>
				<p class="text-light">Members online</p>

				<div class="chart-wrapper px-0" style="height:70px;" height="70">
					<canvas id="widgetChart1"></canvas>
				</div>

			</div>

		</div>
	</div>
	<div class="col-sm-6 col-lg-3">
		<div class="card text-white bg-flat-color-1">
			<div class="card-body pb-0">
				<div class="dropdown float-right">
					<button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton1" data-toggle="dropdown">
						<i class="fa fa-cog"></i>
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="dropdown-menu-content">
							<a class="dropdown-item" href="#">Action</a>
							<a class="dropdown-item" href="#">Another action</a>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<h4 class="mb-0">
					<span class="count">10468</span>
				</h4>
				<p class="text-light">Members online</p>

				<div class="chart-wrapper px-0" style="height:70px;" height="70">
					<canvas id="widgetChart1"></canvas>
				</div>

			</div>

		</div>
	</div>
	<div class="col-sm-6 col-lg-3">
		<div class="card text-white bg-flat-color-1">
			<div class="card-body pb-0">
				<div class="dropdown float-right">
					<button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton1" data-toggle="dropdown">
						<i class="fa fa-cog"></i>
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="dropdown-menu-content">
							<a class="dropdown-item" href="#">Action</a>
							<a class="dropdown-item" href="#">Another action</a>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<h4 class="mb-0">
					<span class="count">10468</span>
				</h4>
				<p class="text-light">Members online</p>

				<div class="chart-wrapper px-0" style="height:70px;" height="70">
					<canvas id="widgetChart1"></canvas>
				</div>

			</div>

		</div>
	</div>
	
</div>

@foreach($bayar as $row)
@if($row->dibayar <= now() && auth()->user()->id == $row->user_id && $row->pay == NULL)
<div class="bs-example">
	<div id="myModal" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Silahkan Lakukan Pembayaran</h5>
				</div>
				<form action="{{ route('users.pay2')}}" method="post" enctype="multipart/form-data">
					@csrf
					<div class="modal-body">
						<div class="row">
							<label class="col-md-3 col-form-label">Dari Tanggal</label>
							<div class="col-md-7">
								<div class="form-group">
									<input type="text" name="tgl_bayar" value="{{now()}}" class="form-control" readonly="">
								</div>
							</div>
						</div>
						<input type="hidden" name="user_id" value="{{auth()->user()->id}}" class="form-control" readonly="">

						<div class="row">
							@foreach($harga as $a)
							<div class="col-md-2">
								<label class="btn btn-outline-primary ">
									<input type="radio" name="bulan" id="option2" v-model="pilih" value="{{ $a->bulan }}" required=""> 
									<br>Paket {{ $a->bulan }} Bulan
									<br>{{ rupiah($a->harga) }}
								</label>
							</div>

							@endforeach
						</div><br>
						<div class="row">
							<label class="col-md-3 col-form-label">Bukti Transfer</label>
							<div class="col-md-7">
								<div class="form-group">
									<input type="file" name="image" class="form-control" required="">
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">

						<a class="btn btn-secondary" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="menu-icon ti-control-backward"></i> Close</a>
						<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
							@csrf
						</form>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>
@elseif(auth()->user()->id == $row->user_id && $row->pay == 1)
<div class="bs-example">
	<div id="myModal" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Pembayaran Sudah Berhasil</h5>
				</div>
				
				<div class="modal-body">
					<p>Sedang diproses oleh admin, maaf anda belum dapat menggunakan aplikasi</p>
				</div>
				<div class="modal-footer">

					<a class="btn btn-secondary" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="menu-icon ti-control-backward"></i> Close</a>
					<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
						@csrf
					</form>
		
				</div>
			</form>

		</div>
	</div>
</div>
</div>
@endif
@endforeach
@section('script')

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){

		$(window).on('load', function(){
			$('#myModal').modal({
				backdrop: 'static',
				keyboard: false
			});
		}); 
		$(window).on('load', function(){
			$('#myModal2').modal({
				backdrop: 'static',
				keyboard: false
			});
		}); 
	});
</script>
<style>
.bs-example{
	margin: 20px;
}
</style>
@endsection
@endsection