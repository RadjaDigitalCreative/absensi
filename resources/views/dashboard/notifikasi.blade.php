@extends('layouts.main')
<?php $title ='Notifikasi'; 
function rupiah($m)
{
	$rupiah = "Rp ".number_format($m,0,",",".").",-";
	return $rupiah;
}
?>

@section('content')
@foreach($bayar as $abs)



@endforeach

<div class="content mt-3">

	<div class="col-sm-12 col-lg-12">
		<div class="card text-white bg-flat-color-1">
			<div class="card-body pb-0">
				<div class="dropdown float-right">
					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

						<li class="nav-item" role="presentation">
							<a style="color: white;" class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Sudah Bayar</a>
						</li>
						<li class="nav-item" role="presentation">
							<a style="color: white;" class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Menunggu Konfirmasi</a>
						</li>
						<li class="nav-item" role="presentation">
							<a style="color: white;" class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Belum Bayar</a>
						</li>
					</ul>
				</div>

				<h4 class="mb-0">
					<span class="count">{{$hitung_bayar}}</span> orang
				</h4>
				<p class="text-light">User yang sudah bayar</p>

				<div class="chart-wrapper px-0" style="height:70px;" height="70">
					<canvas id="widgetChart1"></canvas>
				</div>

			</div>

		</div>
	</div>

</div>

<!-- role sudah bayar -->
<div class="tab-content" id="pills-tabContent">
	<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
		<div class="content mt-3">
			<div class="col-sm-12 col-lg-12">
				<table  class="table table-striped table-bordered">
					<br>
					<thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Email</th>
							<th>Masa Pemakaian</th>
							<th>Status</th>
							
						</tr>
					</thead>
					<tbody>
						@php 
						$nomor =1;
						@endphp
						@foreach($bayar as $abs)
						<tr>
							<td>{{$nomor++}}</td>
							<td>{{$abs->name}}</td>
							<td>{{$abs->email}}</td>
							<!-- abs bayar -->
							@if($abs->dibayar >= now() && $abs->pay == 2 && $abs->level == 'super')
							<td>Selamanya</td>
							<td align="center"><button class="btn btn-success">Super Unlimited</button></td>
							@elseif($abs->dibayar >= now() && $abs->pay == 2 )
							<td>Terlunasi</td>
							<td align="center"><button class="btn btn-success">
								<?php 
								$date = date('Y-m-d', strtotime(now()));
								$date2 = date('Y-m-d', strtotime($abs->dibayar));

								$datetime1 = new DateTime($date);
								$datetime2 = new DateTime($date2);
								$interval = $datetime1->diff($datetime2);
								$days = $interval->format('%a');

								echo $days.' hari lagi';
								?>
							</button></td>
							@elseif($abs->pay ==1)
							<form action="{{ route('users.pay.konfirmasi')}}" method="post">
								@csrf
								<input type="hidden" name="user_id" value="{{$abs->id}}">
								<input type="hidden" name="bulan" value="{{$abs->bulan}}">
								<td>Terlunasi</td>
								<td><button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button></td>
							</form>
							@else
							<td>Belum Terlunasi</td>
							<td >Telah Berakhir</span></td>
							<!-- abs bayar -->
							@endif
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			<div class="content mt-3">
				<div class="col-sm-12 col-lg-12">
					<table  class="table table-striped table-bordered">
						<br>
						<thead>
							<tr>
								<th>No</th>
								<th>Nama</th>
								<th>Email</th>
								<th>Masa Pemakaian</th>
								<th>Status</th>
								<th>Bukti File</th>
							</tr>
						</thead>
						<tbody>
							@php 
							$nomor =1;
							@endphp
							@foreach($konfirmasi as $abs)
							<tr>
								<td>{{$nomor++}}</td>
								<td>{{$abs->name}}</td>
								<td>{{$abs->email}}</td>
								<!-- abs bayar -->
								@if($abs->dibayar >= now() && $abs->pay == 2 && $abs->level == 'super')
								<td>Selamanya</td>
								<td align="center"><button class="btn btn-success">Super Unlimited</button></td>
								@elseif($abs->dibayar >= now() && $abs->pay == 2 )
								<td>Terlunasi</td>
								<td align="center"><button class="btn btn-success">
									<?php 
									$date = date('Y-m-d', strtotime(now()));
									$date2 = date('Y-m-d', strtotime($abs->dibayar));

									$datetime1 = new DateTime($date);
									$datetime2 = new DateTime($date2);
									$interval = $datetime1->diff($datetime2);
									$days = $interval->format('%a');

									echo $days.' hari lagi';
									?>
								</button></td>
								@elseif($abs->pay ==1 && $abs->is_read != 1)
								<form action="{{ route('users.pay.konfirmasi')}}" method="post">
									@csrf
									<input type="hidden" name="user_id" value="{{$abs->user_id}}">
									<input type="hidden" name="bulan" value="{{$abs->bulan}}">
									<td>Terlunasi</td>
									<td><button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button></td>
									<td align="center"><a  data-toggle="modal" data-target="#modal-bukti{{$abs->id}}"  class="btn btn-round btn-info btn-icon btn-sm like"><i class="menu-icon fa fa-file"></i></a></td>
									<div style="text-align: center;" class="modal fade" id="modal-bukti{{$abs->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<h3>Bukti Pembayaran</h3>
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<i class="now-ui-icons ui-1_simple-remove"></i>
													</button>
												</div>
												<div id="#{{$abs->id}}" class="modal-body">
													<div class="instruction">
														<div class="row">
															<div class="col-md-12">
																@if($abs->image == NULL)
																<h3>Belum Mengirim Bukti Pembayaran</h3>
																@else
																<img width="50%" height="50%" src="{{ URL::to('/') }}/images/{{ $abs->image }}">
																<hr>
																<div class="row">
																	<label class="col-md-3 col-form-label">Total Pembayaran</label>
																	<div class="col-md-9">
																		<div class="form-group">
																			<input type="text" value="{{ rupiah($abs->harga) }}" class="form-control" readonly="" >
																		</div>
																	</div>
																	<label class="col-md-3 col-form-label">Bank</label>
																	<div class="col-md-9">
																		<div class="form-group">
																			<input type="text" value="{{ $abs->bank }}" class="form-control" readonly="" >
																		</div>
																	</div>
																	<label class="col-md-3 col-form-label">Tgl Bayar</label>
																	<div class="col-md-9">
																		<div class="form-group">
																			<input type="text" value="{{ $abs->tgl_bayar }}" class="form-control" readonly="" >
																		</div>
																	</div>
																	<label class="col-md-3 col-form-label">Masa Pemakaian</label>
																	<div class="col-md-9">
																		<div class="form-group">
																			<input type="text" value="{{ $abs->bulan }} bulan" class="form-control" readonly="" >
																		</div>
																	</div>
																</div>
																@endif
															</div>
														</div>
													</div>
												</div>
												<br><br>
												<div class="modal-footer justify-content-center">
													<form action="{{ route('users.pay.konfirmasi')}}" method="post">
														@csrf
														<input type="hidden" name="user_id" value="{{$abs->user_id}}">
														<input type="hidden" name="bulan" value="{{$abs->bulan}}">

														<button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button>
													</form>
													<a href="{{ route('users.pay.konfirmasi.cancel', $abs->user_id)}}" class="btn btn-danger">Hapus Konfirmasi</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								@else
								<td>Belum Terlunasi</td>
								<td >Telah Berakhir</span></td>
								<td >Konfirmasi Dibatalkan</span></td>
								<!-- abs bayar -->
								@endif
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			<div class="content mt-3">
				<div class="col-sm-12 col-lg-12">
					<table  class="table table-striped table-bordered">
						<br>
						<thead>
							<tr>
								<th>No</th>
								<th>Nama</th>
								<th>Email</th>
								<th>Masa Pemakaian</th>
								<th>Status</th>

							</tr>
						</thead>
						<tbody>
							@php 
							$nomor =1;
							@endphp
							@foreach($belum_bayar as $abs)
							<tr>
								@if($abs->dibayar <= now() && $abs->pay != 1 )
								<td>{{$nomor++}}</td>
								<td>{{$abs->name}}</td>
								<td>{{$abs->email}}</td>
								<!-- abs bayar -->
								<td>Belum Terlunasi</td>
								<td >Telah Berakhir</span></td>
								<!-- abs bayar -->
								@endif
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection