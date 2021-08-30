@extends('layouts.main')
@section('content')
<?php $title ='Generate Code Agen'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Generate Code Agen</strong> 
					</div>
					<div class="card-body card-block">
						<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama User Agen</th>
									<th>Kode Agen</th>
									<th>No.Telp</th>
									<th>Status</th>
									<th>Dibuat</th>
									<th>Generate</th>
								</tr>
							</thead>
							
							<tbody>
								@php
								$nomor = 1;
								@endphp

								@foreach ($data as $row)
								@if($row->agen <= 1)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$row->name}}</td>
									<td>{{$row->referal}}</td>
									<td>{{$row->notelp}}</td>
									@if($row->referal != NULL)
									<td><button class="btn btn-success">Code Aktif</button></td>
									@else
									<td><button class="btn btn-danger">Code Belum Aktif</button></td>
									@endif
									<td>{{$row->created_at}}</td>
									<td align="center">
										<form action="{{ route('agen.code.generate')}}" method="post">
											@csrf
											<input type="hidden" value="{{$row->id}}" name="id">
											<button type="submit" class="btn btn-group">Generate Code</button>
											@if($row->referal != NULL)
											<a href="{{ route('agen.code.delete', $row->id) }} " class="btn btn-danger">Hapus Code</a>
											@endif 
										</form>
									</td>
								</tr>
								@endif
								@endforeach
							</tbody>
						</table>

					</div>
					<div class="card-footer">   
						@if(auth()->user()->level == 'super') 
						<div  class="btn-group">
							<a href="{{route('agen.code.delete')}}"><button type="button" class="btn btn-danger"><i class="now-ui-icons ui-1_simple-delete"></i> Hapus Semua Code Referal</button></a>
						</div>
						@endif
					</div>
				</div>
			</div>
		</div>
	</div>
	@endsection