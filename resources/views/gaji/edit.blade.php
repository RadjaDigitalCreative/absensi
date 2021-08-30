@extends('layouts.main')
@section('content')
<?php $title ='Tambah Gaji'; ?>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<strong>Komponen</strong> Gaji
					</div>
					<div class="card-body card-block">
						<table class="table table-striped table-bordered">
							
							<thead>
								<tr>
									<th>No</th>
									<th>Komponen </th>
									<th>Total</th>
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
								@foreach($old_gaji as $row)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$row->komponen}}</td>
									<td>+ {{rupiah($row->total)}}</td>
									<td align="center">
										<form id="data-{{ $row->id }}" action="{{route('gaji.destroy',$row->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}

										</form>
										<button type="submit" onclick="deleteRow( {{ $row->id }} )" class="btn btn-outline-danger btn-sm remove"><i class="fa fa-trash"></i>&nbsp;Hapus</button>

									</td>
								</tr>
								@endforeach 
								@foreach($old_potongan as $row)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$row->komponen}}</td>
									<td>- {{rupiah($row->total)}}</td>
									<td align="center">
										<form id="data-{{ $row->id }}" action="{{route('gaji.destroy2',$row->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}
										</form>
										<button type="submit" onclick="deleteRow( {{ $row->id }} )" class="btn btn-outline-danger btn-sm remove"><i class="fa fa-trash"></i>&nbsp;Hapus</button>

									</td>
								</tr>
								@endforeach 

							</tbody>
						</table>
						<strong>Gaji</strong> Lembur <br>
						<br>
						<table class="table table-striped table-bordered">
							
							<thead>
								<tr>
									<th>No</th>
									<th>Jam Mulai Lembur</th>
									<th>Jam Akhir Lembur</th>
									<th>Perjam</th>
									
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								
								$nomor = 1;
								?>
								@foreach($gaji_lembur as $row)
								<tr>
									<td>{{$nomor++}}</td>
									<td>{{$row->jam_masuk_lembur}}</td>
									<td>{{$row->jam_keluar_lembur}}</td>
									<td>{{rupiah($row->gaji)}}</td>
									<td align="center">
										<form id="data-{{ $row->id }}" action="{{route('gaji.lembur.destroy',$row->id)}}" method="post">
											{{csrf_field()}}
											{{method_field('delete')}}

										</form>
										<button type="submit" onclick="deleteRow( {{ $row->id }} )" class="btn btn-outline-danger btn-sm remove"><i class="fa fa-trash"></i>&nbsp;Hapus</button>

									</td>
								</tr>
								@endforeach 

							</tbody>
						</table>
						<hr>
						<form action="{{route('gaji.store')}}" method="post"  class="form-horizontal">
							@csrf
							@method('POST')
							<div class="row">
								<label class="col-md-12 col-form-label"><b>Tambah Komponen Lainnya</b></label>
							</div>
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<input type="hidden" name="user_id" value="{{$id}}">
									<div class="col-md-6">
										<div class="form-group">
											<input id="masking3[]" placeholder="Nama Gaji"  type="text" name="harga[]"  class="form-control" >
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input  type="number" placeholder="Nominal" name="qty[]" class="form-control" >
										</div>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-danger btn-sm" @click="delOrder(index)"><i class="fa fa-trash"></i></button>
										<button type="button" class="btn btn-success btn-sm" @click="addOrder()" ><i class="fa fa-plus"></i></button>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<label class="col-md-3 col-form-label"><b>Potongan</b></label>
							</div>
							<div id="appi">
								<div class="row" v-for="(order, index) in orders" :key="index">

									<div class="col-md-6">
										<div class="form-group">
											<input id="masking3[]" placeholder="Nama Gaji"  type="text" name="potongan[]" class="form-control" >
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input  type="number" placeholder="Nominal" name="jumlah[]" class="form-control" >
										</div>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-danger btn-sm" @click="delOrder(index)"><i class="fa fa-trash"></i></button>
										<button type="button" class="btn btn-success btn-sm" @click="addOrder()" ><i class="fa fa-plus"></i></button>
									</div>
								</div>
							</div>
							<br> <hr>
							<div class="row">
								<label class="col-md-12 col-form-label"><b>Setting Gaji Lembur</b></label>
							</div>
							<div class="row">
								<label class="col-md-3 col-form-label"><b>Jam Lembur</b></label>
							</div>
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<div class="col-md-5">
										<div class="form-group">
											<input  placeholder="Jam Masuk Lembur"  type="time" name="jam_lembur_masuk" class="form-control" >
										</div>
									</div>
									<div class="col-md-1">
										s/d
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<input  type="time" placeholder="Jam Keluar Lembur" name="jam_lembur_keluar" class="form-control">
										</div>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<label class="col-md-3 col-form-label"><b>Gaji</b></label>
							</div>
							<div id="appi">
								<div class="row" v-for="(order, index) in orders" :key="index">

									<div class="col-md-6">
										<div class="form-group">
											<input id="masking3[]" placeholder="Nama Gaji Lembur"  type="text" name="nama" class="form-control" >
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<input  type="number" placeholder="Nominal Per Jam" name="gaji" class="form-control" >
										</div>
									</div>
								</div>
							</div>
								<div class="row">
								<label class="col-md-12 col-form-label"><b>No. Rek</b></label>
							</div>
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<div class="col-md-5">
										<div class="form-group">
											<input  placeholder="No. Rekening"  type="number" name="norek" class="form-control" >
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<input  type="text" placeholder="Atas Nama" name="atas_nama" class="form-control" >
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<input  type="text" placeholder="Bank" name="bank" class="form-control">
										</div>
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