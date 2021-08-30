@extends('layouts.main')
@section('content')
<?php $title ='Tambah Harga Baru'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Data Table</strong>
						<a style="float: right;" href="{{route('harga.deleteAll')}}" class="btn btn-danger btn-sm">Hapus Semua Harga</a>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>No</th>
									<th>Bulan</th>
									<th>Harga</th>
									<th>Dibuat</th>
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
								@foreach($data as $abs)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$abs->bulan}} Bulan</td>
									<td>{{rupiah($abs->harga)}}</td>
									<td>{{$abs->created_at}}</td>
									<td align="center">
										<form id="data-{{ $abs->id }}" action="{{route('harga.destroy',$abs->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}
										</form>
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
<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Tambah Harga Baru</strong> 
					</div>
					<div class="card-body card-block">
						<form action="{{route('harga.store')}}" method="post"  class="form-horizontal">
							@csrf
							@method('POST')
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<div class="col-md-6">
										<div class="form-group">
											<input  placeholder="Jumlah Bulan"  type="text" name="bulan[]" class="form-control" required="">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input  type="number" placeholder="Harga dalam Rupiah" name="harga[]" class="form-control" required="">
										</div>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-danger btn-sm" @click="delOrder(index)"><i class="fa fa-trash"></i></button>
										<button type="button" class="btn btn-success btn-sm" @click="addOrder()" ><i class="fa fa-plus"></i></button>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-primary btn-sm">
								<i class="fa fa-dot-circle-o"></i> Simpan
							</button>
							<button type="reset" class="btn btn-danger btn-sm">
								<i class="fa fa-ban"></i> Batal
							</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>
@section('script')
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js"></script>
<script type="text/javascript">
	new Vue({
		el: '#app',
		data: {
			orders: [
			{pesanan: 0, nama: "", harga: 0, jumlah: 1, subtotal: 0},
			],
			discount: 0,
			note: "",
		},
		methods: {
			addOrder(){
				var orders = {pesanan: 0, nama: "", harga: 0, jumlah: 1, subtotal: 0};
				this.orders.push(orders);
			},
			delOrder(index){
				if (index > 0){
					this.orders.splice(index,1);
				}
			},
		},
	});
	new Vue({
		el: '#appi',
		data: {
			orders: [
			{pesanan: 0, nama: "", harga: 0, jumlah: 1, subtotal: 0},
			],
			discount: 0,
			note: "",
		},
		methods: {
			addOrder(){
				var orders = {pesanan: 0, nama: "", harga: 0, jumlah: 1, subtotal: 0};
				this.orders.push(orders);
			},
			delOrder(index){
				if (index > 0){
					this.orders.splice(index,1);
				}
			},
		},
	});
</script>
@endsection
@endsection