@extends('layouts.main')
@section('content')
<?php $title ='Cabang Perusahaan'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Cabang Perusahaan</strong>
						<a style="float: right;" href="{{route('cabang.perusahaan.create')}}" class="btn btn-primary btn-sm">Tambah Cabang Perusahaan</a>
					</div>
					<div class="card-body">
						<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Cabang Perusahaan</th>
									<th>Lokasi</th>
									<th>Alamat Lengkap</th>
									<th>Longitude</th>
									<th>Latitude</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@php 
								$nomor =1;
								@endphp
								@foreach($data as $abs)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$abs->nama_perusahaan}}</td>
									<td>{{$abs->lokasi}}</td>
									<td>{{$abs->alamat}}</td>
									@if($abs->longitude != NULL && $abs->latitude != NULL)
									<td>{{$abs->longitude}}</td>
									<td>{{$abs->latitude}}</td>
									@else
									<td>Not Set</td>
									<td>Not Set</td>
									@endif
									<td>
										<form id="data-{{ $abs->id }}" action="{{route('cabang.perusahaan.delete',$abs->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}
										</form>
										<a href="{{  route('cabang.perusahaan.edit', $abs->id) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</button></a>
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