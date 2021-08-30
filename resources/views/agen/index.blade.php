@extends('layouts.main')

@section('content')
<!-- modal bonus -->
@foreach ($link as $links)
<div style="text-align: center;" class="modal fade" id="modal-bonus{{$links->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="card-title">Berikan Dia Upah</h6>
			</div>
			<form class="form" method="post" action="{{ route('agen.upah')}}">
				<div class="modal-body">
					@csrf
					<div class="row">
						<label class="col-md-3 col-form-label">Bonus Member</label>
						<div class="col-md-8">
							<div class="form-group">
								<input type="number" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"maxlength = "2" placeholder="%" required="" name="persen" class="form-control">
							</div>
						</div>
						<input type="hidden"  value="{{$links->id}}" name="user_id">
					</div>
				</div>
				<div class="modal-footer justify-content-center">
					<button style="float: right;" type="submit" class="btn btn-primary">Berbagi</button>

				</div>
			</form>

		</div>
	</div>
</div>
@endforeach
<!-- modal bonus -->
<?php $title ='Agen Digital Absensi'; ?>
<?php 
function rupiah($m)
{
	$rupiah = "Rp ".number_format($m,0,",",".").",-";
	return $rupiah;
} ?>
<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Agen Digital Absensi</strong>
						<a style="float: right;" href="{{route('agen.create')}}" class="btn btn-primary btn-sm">Generate Code Agen</a>
					</div>
					<div class="card-body">

						@foreach ($link as $links)
						@if($links->referal != NULL && $links->agen == 1)
						@if($links->id_team == auth()->user()->id_team)
						<div class="accordion" id="accordionExample-{{$links->id}}">
							<div class="card">
								<div class="card-header" id="headingTwo">
									<h2 class="mb-0">
										<button data-toggle="collapse" data-target="#view-show{{$links->id}}" aria-expanded="false" aria-controls="collapseTwo" style="float: right;" class="btn btn-success btn-sm collapsed" type="button">View Data</button>

										<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#modal-show{{$links->id}}" aria-expanded="false" aria-controls="collapseTwo">
											<h6 style="font-size: 18px;">{{$links->name}}</h6>
											<h6 style="font-size: 18px; float: right;">#{{$links->referal}}</h6>
										</button>
									</h2>
								</div>
								@include('agen.view')

								<div id="modal-show{{$links->id}}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample-{{$links->id}}">

									<div class="card-body">
										<h6 class="card-title">Member Saat Ini</h6>
										
										<table  class="table table-striped table-bordered" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama</th>
													<th>Jabatan</th>
													<th>Referal</th>
													<th>Payment</th>
													
													
												</tr>
											</thead>
											<tfoot>
												<tr>
													<th>No</th>
													<th>Nama</th>
													<th>Jabatan</th>
													<th>Referal</th>
													<th>Payment</th>
													
													
												</tr>
											</tfoot>
											<tbody>
												@php
												$nomor = 1;
												@endphp
												@foreach ($data-> sortbyDesc('dibayar') as $row)
												@if ($links->referal == $row->referal && $row->agen == 2)
												<tr>
													<td>{{$nomor++}}</td>
													<td>{{$row->name}}</td>
													<td>
														@if(auth()->user()->id_team == 1 && $row->id_team == 1)
														Super
														@endif
														{{$row->level}}
													</td>
													<td>{{$row->referal}}</td>
													@if($row->dibayar >= now() && $row->pay == 2 )
													<td>Terlunasi</td>
													
													@elseif($row->pay ==1)
													<form action="{{route('transfer.konfirmasi', $row->id)}}" method="post">
														{{ csrf_field() }}
														{{ method_field('PATCH')}}
														<input type="hidden" name="user_id" value="{{$row->id}}">
														<input type="hidden" name="dibayar" value="{{$row->tgl_bayar}}">
														<td>Terlunasi</td>
														<td><button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button></td>
													</form>
													@else
													<td>Belum Terlunasi</td>
													
													@endif
												
													</td>
												</tr>
												@endif
												@endforeach
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</div>
						@elseif(auth()->user()->level == 'super' && $links->agen == 1)
						<div class="accordion" id="accordionExample-{{$links->id}}">

							<div class="card">
								<div class="card-header" id="headingTwo">
									<h2 class="mb-0">
										<button data-toggle="collapse" data-target="#view-show{{$links->id}}" aria-expanded="false" aria-controls="collapseTwo" style="float: right;" class="btn btn-success btn-sm collapsed" type="button">View Data</button>

										<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#modal-show{{$links->id}}" aria-expanded="false" aria-controls="collapseTwo">
											<h6 style="font-size: 18px;">{{$links->name}}</h6>
											<h6 style="font-size: 18px; float: right;">#{{$links->referal}}</h6>
										</button>
									</h2>
								</div>
								@include('agen.view')

								<div id="modal-show{{$links->id}}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample-{{$links->id}}">
									<div class="card-body">
										<h6 class="card-title">Member Saat Ini</h6>

										<table  class="table table-striped table-bordered" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama</th>
													<th>Jabatan</th>
													<th>Referal</th>
													<th>Payment</th>
													
													
												</tr>
											</thead>
											<tfoot>
												<tr>
													<th>No</th>
													<th>Nama</th>
													<th>Jabatan</th>
													<th>Referal</th>
													<th>Payment</th>
												
												
												</tr>
											</tfoot>
											<tbody>
												@php
												$nomor = 1;

												@endphp
												@foreach ($data-> sortbyDesc('dibayar') as $row)
												@if ($links->referal == $row->referal && $row->agen == 2)
												<tr>
													<td>{{$nomor++}}</td>
													<td>{{$row->name}}</td>
													<td>
														@if(auth()->user()->id_team == 1 && $row->id_team == 1)
														Super
														@endif
														{{$row->level}}
													</td>
													
													<td>{{$row->referal}}</td>

													@if($row->dibayar >= now() && $row->pay == 2 )
													<td>Terlunasi</td>
													
													@elseif($row->pay ==1)
													<form action="{{route('transfer.konfirmasi', $row->id)}}" method="post">
														{{ csrf_field() }}
														{{ method_field('PATCH')}}
														<input type="hidden" name="user_id" value="{{$row->id}}">
														<input type="hidden" name="dibayar" value="{{$row->tgl_bayar}}">
														<td>Terlunasi</td>
														<td><button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button></td>
													</form>
													@else
													<td>Belum Terlunasi</td>
													
													@endif
													
												</tr>
												@endif
												@endforeach
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</div>
						@endif
						@endif
						@endforeach
					</div>
				</div>
			</div>
		</div><!-- .animated -->
	</div><!-- .content -->
	@endsection