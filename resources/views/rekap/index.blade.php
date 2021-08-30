@extends('layouts.main')
@section('content')
<?php $title ='Rekap Gaji'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Rekap Gaji Pegawai</strong>
					</div>
					<div class="card-body">
						<form action="{{ route('rekap.filter')}}" method="post">
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
						<table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Pegawai</th>
									<th>Total Gaji</th>
									<th>Total Potongan</th>
									<th>Total Lembur</th>
									<th>Total Pelanggaran</th>
									<th>Gaji Saat Ini</th>
									<th>Nomor Rekening</th>
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
								@if(auth()->user()->level == 'super')
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
									<td><b>
										<?php foreach ($data3 as $key) {
											$total_cuti = ($key->hari - $key->cuti) * $key->gaji;

											if ($key->name == $row->name) {
												$masuk = $key->total;
												if ($key->lembur >= 1) {
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk ) + ($row->gaji_lembur * $key->total_lembur) - ($key->total_telat * $key->telat) + $total_cuti);
												}else{
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk) - ($key->total_telat * $key->telat) + $total_cuti);
												}
											}
										}?></b>
									</td>
									<td>{{$row->norek}} {{$row->bank}} {{$row->atas_nama}}</td>
									<td>{{$row->created_at}}</td>
									<td align="center">
										<a href="{{  route('rekap.view', $row->id_pegawai) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-print"></i>&nbsp;Print</button></a>
									</td>
								</tr>
								@elseif($row->id_team == auth()->user()->id_team && auth()->user()->level == 'owner')
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
									<td><b>
										<?php foreach ($data3 as $key) {
											$total_cuti = ($key->hari - $key->cuti) * $key->gaji;

											if ($key->name == $row->name) {
												$masuk = $key->total;
												if ($key->lembur >= 1) {
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk ) + ($row->gaji_lembur * $key->total_lembur) - ($key->total_telat * $key->telat) + $total_cuti);
												}else{
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk) - ($key->total_telat * $key->telat) + $total_cuti);
												
												}
											}
										}?></b>
									</td>
									<td>{{$row->norek}} {{$row->bank}} {{$row->atas_nama}}</td>
									<td>{{$row->created_at}}</td>
									<td align="center">
										<a href="{{  route('rekap.view', $row->id_pegawai) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-print"></i>&nbsp;Print</button></a>
									</td>
								</tr>
								@elseif($row->id_pegawai == auth()->user()->id && auth()->user()->level == 'pegawai')
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
									<td><b>
										<?php foreach ($data3 as $key) {
											$total_cuti = ($key->hari - $key->cuti) * $key->gaji;

											if ($key->name == $row->name) {
												$masuk = $key->total;
												if ($key->lembur >= 1) {
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk ) + ($row->gaji_lembur * $key->total_lembur) - ($key->total_telat * $key->telat) + $total_cuti);
												}else{
													echo rupiah( ((($row->total - $potongan ) / $hari) * $masuk) - ($key->total_telat * $key->telat) + $total_cuti);
												}
											}
										}?></b>
									</td>
									<td>{{$row->norek}} {{$row->bank}} {{$row->atas_nama}}</td>
									<td>{{$row->created_at}}</td>
									<td align="center">
										<a href="{{  route('rekap.view', $row->id_pegawai) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-print"></i>&nbsp;Print</button></a>
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
	</div><!-- .animated -->
</div><!-- .content -->
@endsection
@section('script')
<script>
    $(document).ready( function () {
      $('#table_id').DataTable({
        "scrollX": true,
        dom: 'Bfrtip',
        buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
      });
    } );
  </script>
 @endsection