@extends('layouts.main')
@section('content')
<?php $title ='Gaji'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Gaji Master</strong>
						<a style="float: right;" href="{{route('gaji.create')}}" class="btn btn-primary btn-sm">Buat Gaji Pegawai</a>
					</div>
					<div class="card-body">
						<form action="{{ route('gaji.filter')}}" method="post">
							@csrf
							<div class="row">
								<div class="col-md-6">
									<select data-placeholder="Pilih Bulan" name="filter" class="standardSelect2" tabindex="1">
										<option value=""></option>
										<option value="1">Januari</option>
										<option value="2">Febuari</option>
										<option value="3">Maret</option>
										<option value="4">April</option>
										<option value="5">Mei</option>
										<option value="6">Juni</option>
										<option value="7">Juli</option>
										<option value="8">Agustus</option>
										<option value="9">September</option>
										<option value="10">Oktober</option>
										<option value="11">November</option>
										<option value="12">Desember</option>
									</select>
								</div>
								<div class="col-md-2">
									<button type="submit" class="btn btn-outline-primary btn-sm"><i class="fa fa-search"></i>&nbsp;Filter</button>
								</div>
							</div>
						</form>
						<br>
						<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
							
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Pegawai</th>
									<th>Total Gaji</th>
									<th>Total Potongan</th>
									<th>Total Lembur</th>
									<th>Total Pelanggaran</th>
									<th>Gaji Saat Ini</th>
									<th>Bulan</th>
									<th>Dibuat</th>
									<th>Action</th>
									
								</tr>
							</thead>
							<tbody>
								<?php 
								function rupiah($m)
								{
									$rupiah = "Rp ".number_format($m,0,",",".").",-";
									return $rupiah;
								}
								$nomor = 1;
								?>
								
								@foreach($data as $row)

								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$row->name}}</td>
									<td>{{rupiah($row->total)}}</td>
									<td>
										<?php foreach ($data2 as $key) {
											if ($key->name == $row->name) {
												$potongan = $key->total;
												echo rupiah($potongan);
											}
										}?>
									</td>

									<td>
										<?php foreach ($data3 as $key) {
											if ($key->name == $row->name) {
												$masuk = $key->total;
												if ($key->lembur >= 1) {
													echo rupiah($row->gaji_lembur * $key->total_lembur);
												}else{
													echo "-";
												}
											}
										}?>
									</td>
									<td>
										<?php foreach ($data3 as $key) {
											if ($key->name == $row->name) {
												echo rupiah($key->total_telat * $key->telat), $key->total_telat." x";
											}
										}?>
									</td>
									<td>
										<b>
											<?php foreach ($data3 as $key) {
												if ($key->name == $row->name) {
													$masuk = $key->total;
													if ($key->lembur >= 1) {
														echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk ) + ($row->gaji_lembur * $key->total_lembur) - ($key->total_telat * $key->telat));
													}else{
														echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk) - ($key->total_telat * $key->telat) );
													}
												}
											}?>
										</b>
									</td>
									<td>
										<?php foreach ($data3 as $key) {
											if ($key->bulan == now()->month && $key->name == $row->name){
												switch ($key->bulan) {
													case '1':
													$bulan = 'Januari';
													break;
													case '2':
													$bulan = 'Februari';
													break;
													case '3':
													$bulan = 'Maret';
													break;
													case '4':
													$bulan = 'April';
													break;
													case '5':
													$bulan = 'Mei';
													break;
													case '6':
													$bulan = 'Juni';
													break;
													case '7':
													$bulan = 'Juli';
													break;
													case '8':
													$bulan = 'Agustus';
													break;
													case '9':
													$bulan = 'September';
													break;
													case '10':
													$bulan = 'Oktober';
													break;
													case '11':
													$bulan = 'November';
													break;
													case '12':
													$bulan = 'Desember';
													break;
													default:
													$bulan = 'Bulan Tidak Ada';
													break;
												}
												echo $bulan;
											}
										}?>
									</td>
									<td>{{$row->created_at}}</td>
									<td align="center">
										<a href="{{  route('gaji.edit', $row->id_gaji) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</button></a>
									</td>
								</tr>

								@endforeach

							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div><!-- .animated -->
</div><!-- .content -->
@endsection