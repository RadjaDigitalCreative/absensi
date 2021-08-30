@extends('layouts.main')
@section('content')
<?php $title ='Tabel Cuti User'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Tabel Cuti</strong>
					</div>
					<div class="card-body">
						<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Pegawai</th>
									<th class="text-center">Tgl Cuti</th>
									<th>Nominal Cuti(tidak diambil)</th>
									<th>Pengajuan Cuti</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@php 
								$nomor =1;
								function rupiah($m)
								{
									$rupiah = "Rp ".number_format($m,0,",",".").",-";
									return $rupiah;
								}
								@endphp
								@foreach($cuti as $abs)
								
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$abs->name}}</td>
									@foreach($tanggal as $ami)
									<?php 
									$tgl_mulai = date( "l, d F Y", strtotime($ami->tgl_mulai_cuti));
									?>
									<td >{{$tgl_mulai}}</td>
									@endforeach
									<td>{{rupiah($abs->gaji)}}</td>
									<td>{{$abs->hari}} hari</td>
									<td align="center">
										<form id="data-{{ $abs->id }}" action="{{route('cuti.destroy',$abs->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}
										</form>
										@if($abs->status == 0)
										<a href="{{  route('cuti.approve', $abs->id_cuti) }}"><button type="button" class="btn btn-outline-success btn-sm"><i class="fa fa-edit"></i>&nbsp;Approve</button></a>
										@elseif($abs->status >= 1)
										<a href="{{  route('cuti.unapprove', $abs->id_cuti) }}"><button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-edit"></i>&nbsp;Unapprove</button></a>
										@endif
										<button type="submit" onclick="deleteRow( {{ $abs->id }} )" class="btn btn-outline-danger btn-sm remove"><i class="fa fa-trash"></i>&nbsp;Hapus</button>
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
