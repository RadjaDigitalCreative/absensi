@extends('layouts.main')
<?php $title ='Rekap Gaji'; ?>
@section('content')
<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">Data Pegawai  <b>( {{ $pegawai->name }} )</b></h4>
					</div>
					<div class="card-body card-block">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Profil Saya</strong>
								</div>
								<div class="card-body">
									<div class="mx-auto d-block">
										@if($pegawai->image == NULL)
										<img class="rounded-circle mx-auto d-block" width="20%" height="20%" src="{{ asset('images/logo.png') }}" alt="Card image cap">
										@else
										<img class="rounded-circle mx-auto d-block" width="20%" height="20%" src="{{ URL::to('/') }}/images/{{ $pegawai->image }}" alt="Card image cap">
										@endif
										<h5 class="text-sm-center mt-2 mb-1">{{$pegawai->name}}</h5>
										<div class="location text-sm-center"><i class="fa fa-mail"></i> {{$pegawai->email}}</div>
									</div>
									<hr>
									<div class="card-text text-sm-center">
										<h4><strong class="card-title mb-5">Total Gaji : {{rupiah($hasil)}}</strong></h4>
										
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
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Hari Kerja Saya</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Jumlah Hari Kerja</label></div>
										<div class="col-12 col-md-9">{{$data4->total}} Hari</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Masuk Kerja</label></div>
										<div class="col-12 col-md-9">{{$data3->total}} Hari</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Lembur</label></div>
										<div class="col-12 col-md-9">{{$data3->jumlah_lembur}} Hari</div>
									</div>
									

								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Gaji Saya</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Gaji Pokok</label></div>
										<div class="col-12 col-md-9">{{rupiah($data->total)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Potongan</label></div>
										<div class="col-12 col-md-9">{{rupiah($data2->total)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Perhari</label></div>
										<div class="col-12 col-md-9">{{rupiah($hasil2)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Lembur Perhari</label></div>
										<div class="col-12 col-md-9">{{rupiah($data->total_lembur)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Lembur Saat ini</label></div>
										<div class="col-12 col-md-9">{{rupiah($hasil3)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Potongan Pelanggaran</label></div>
										<div class="col-12 col-md-9">{{rupiah($hasil4)}}</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Keseluruhan Saat Ini</label></div>
										<div class="col-12 col-md-9"><b>{{rupiah($hasil)}}</b></div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Rekening</label></div>
										<div class="col-12 col-md-9"></div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Komponen Cuti</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Pengajuan Cuti</label></div>
										<div class="col-12 col-md-9">{{$hasil5}} hari</div>
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Cuti Terambil</label></div>
										<div class="col-12 col-md-9">{{$hasil6}} hari</div>
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">Bonus Cuti Tidak Diambil</label></div>
										<div class="col-12 col-md-9">{{rupiah($hasil7)}}</div>
										
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Komponen Gaji</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										@foreach($data5 as $row)
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">{{$row->komponen}}</label></div>
										<div class="col-12 col-md-9">{{rupiah($row->total)}}</div>
										@endforeach
									</div>

								</div>
							</div>
						</div>
					
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Komponen Potongan</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
										@foreach($data6 as $row)
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">{{$row->komponen}}</label></div>
										<div class="col-12 col-md-9">{{rupiah($row->total)}}</div>
										@endforeach
									</div>

								</div>
							</div>
						</div>
							<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title mb-3">Transfer</strong>
								</div>
								<div class="card-body">
									<div class="row form-group">
								
										<div class="col col-md-3"><label for="text-input" class=" form-control-label">No. Rek</label></div>
										<div class="col-12 col-md-9">{{$data->norek}}</div>
											<div class="col col-md-3"><label for="text-input" class=" form-control-label">Bank</label></div>
										<div class="col-12 col-md-9">{{$data->bank}}</div>
											<div class="col col-md-3"><label for="text-input" class=" form-control-label">Atas Nama</label></div>
										<div class="col-12 col-md-9">{{$data->atas_nama}}</div>
									</div>

								</div>
							</div>
						</div>
						<div class="card-footer ">
							<a target="_blank" href="{{  route('rekap.print', $id) }}"><button type="button" class="btn btn-outline-success "><i class="fa fa-print"></i>&nbsp;Print Sekarang</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		@endsection