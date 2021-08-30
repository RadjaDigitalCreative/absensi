@extends('layouts.main')
@section('content')
<?php $title ='Data Pegawai'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Data Pegawai</strong>  ( {{ $pegawai->name }} )
					</div>
					<div class="card-body card-block">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Profil Saya</strong>
								</div>
								<div class="card-body">
									<div class="mx-auto d-block">
										@if($pegawai->image  == NULL)
										@else
										<img class="rounded-circle mx-auto d-block" width="20%" height="20%" src="{{ URL::to('/') }}/images/{{ $pegawai->image }}" alt="Card image cap">
										@endif
										<h5 class="text-sm-center mt-2 mb-1">{{$pegawai->name}}</h5>
										<div class="location text-sm-center"><i class="fa fa-mail"></i> {{$pegawai->email}}</div>
									</div>
									<hr>
									<div class="card-text text-sm-center">
										<a href="#"><i class="fa fa-facebook pr-1"></i></a>
										<a href="#"><i class="fa fa-twitter pr-1"></i></a>
										<a href="#"><i class="fa fa-linkedin pr-1"></i></a>
										<a href="#"><i class="fa fa-pinterest pr-1"></i></a>
									</div>
								</div>
							</div>
						</div>
						<?php 
						function rupiah($m)
						{
							$rupiah = "Rp ".number_format($m,0,",",".").",-";
							return $rupiah;
						}
						?>

						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4>Sort Perbulan</h4>
								</div>
								<div class="card-body">
									<div class="default-tab">
										<nav>
											<div class="nav nav-tabs" id="nav-tab" role="tablist">
												<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Absensi</a>
												<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Gaji</a>

											</div>
										</nav>
										<div class="tab-content pl-4 pt-4" id="nav-tabContent">
											<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
												<table  class="table table-striped table-bordered">
													<thead>
														<tr>
															<th>No</th>
															<th>Bulan</th>
															<th>Absen</th>
														</tr>
													</thead>
													<tbody>
														@php
														$nomor = 1;
														@endphp
														@foreach($bulan as $row)
														<tr>
															<td>{{ $nomor++ }}</td>
															@switch($row->bulan)
															@case(1)
															<td>Januari </td>
															@break
															@case(2)
															<td>Februari </td>
															@break
															@case(3)
															<td>Maret </td>
															@break
															@case(4)
															<td>April </td>
															@break
															@case(5)
															<td>Mei </td>
															@break
															@case(6)
															<td>Juni </td>
															@break
															@case(7)
															<td>Juli </td>
															@break
															@case(8)
															<td>Agustus </td>
															@break
															@case(9)
															<td>September </td>
															@break
															@case(10)
															<td>Oktober </td>
															@break
															@case(11)
															<td>November </td>
															@break
															@case(12)
															<td>Desember </td>
															@break

															@default
															<td>Bulan Belum Ditemukan </td>
															@endswitch
															<td>{{ $row->total }} Hari </td>
														</tr>
														@endforeach
													</tbody>
												</table>
											</div>
											<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
												<table  class="table table-striped table-bordered">
													<thead>
														<tr>
															<th>No</th>
															<th>Bulan</th>
															<th>Gaji</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														@php
														$nomor = 1;
														@endphp
														@foreach($gajian as $row)
														<tr>
															<td>{{ $nomor++ }}</td>
															@switch($row->bulan)
															@case(1)
															<td>Januari </td>
															@break
															@case(2)
															<td>Februari </td>
															@break
															@case(3)
															<td>Maret </td>
															@break
															@case(4)
															<td>April </td>
															@break
															@case(5)
															<td>Mei </td>
															@break
															@case(6)
															<td>Juni </td>
															@break
															@case(7)
															<td>Juli </td>
															@break
															@case(8)
															<td>Agustus </td>
															@break
															@case(9)
															<td>September </td>
															@break
															@case(10)
															<td>Oktober </td>
															@break
															@case(11)
															<td>November </td>
															@break
															@case(12)
															<td>Desember </td>
															@break

															@default
															<td>Bulan Belum Ditemukan </td>
															@endswitch
															<td>{{ rupiah($hasil2) }}  </td>
															<td align="center">
																<a href="{{  route('rekap.view', $row->id_pegawai) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-print"></i>&nbsp;Print</button></a>
															</td>
														</tr>
														@endforeach
														
													</tbody>
												</table>
											</div>

										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Gaji Saya Bulan Ini</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Gaji</label></div>
										<div class="col-12 col-md-9">{{rupiah($data->total)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Potongan</label></div>
										<div class="col-12 col-md-9">{{rupiah($data2->total)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Masuk Kerja</label></div>
										<div class="col-12 col-md-9">{{$data3->total}} Hari</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Saat Ini</label></div>
										<div class="col-12 col-md-9">{{rupiah($hasil)}}</div>
									</div>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	@endsection