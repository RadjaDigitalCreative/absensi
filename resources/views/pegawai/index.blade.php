@extends('layouts.main')
@section('content')
<?php $title ='Pegawai'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Data Table</strong>
						<a style="float: right;" href="{{route('pegawai.create')}}" class="btn btn-primary btn-sm">Tambah Pegawai</a>
					</div>
					<div class="card-body">
						<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Email</th>
									<th>Dibuat</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@php 
								$nomor =1;
								@endphp
								@foreach($pegawai as $abs)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$abs->name}}</td>
									<td>{{$abs->email}}</td>
									<td>{{$abs->created_at}}</td>
									<td >
										<form id="data-{{ $abs->id }}" action="{{route('pegawai.destroy',$abs->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}
										</form>
										<a href="{{  route('pegawai.view', $abs->id) }}"><button type="button" class="btn btn-outline-success btn-sm"><i class="fa fa-eye"></i>&nbsp;View</button></a>
										<a href="{{  route('pegawai.edit', $abs->id) }}"><button type="button" class="btn btn-outline-primary btn-sm"><i class="fa fa-edit"></i>&nbsp;Edit</button></a>
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