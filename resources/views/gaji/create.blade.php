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
						<form action="{{route('gaji.store')}}" method="post"  class="form-horizontal">
							@csrf
							@method('POST')
							<div class="row">
								<label class="col-md-3 col-form-label"><b>Pegawai</b></label>

								<div class="col-md-7">
									<select name="user_id" id="SelectLm" class="form-control form-control">
										<option >Silahkan Pilih Pegawai</option>
										@foreach($pegawai as $data)
										<option value="{{$data->id}}">{{$data->name}}</option>
										@endforeach
									</select>
								</div>
							</div><br> <hr>
							<div class="row">
								<label class="col-md-3 col-form-label"><b>Gaji</b></label>
							</div>
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<div class="col-md-6">
										<div class="form-group">
											<input id="masking3[]" placeholder="Nama Gaji"  type="text" name="harga[]" class="form-control" >
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
								<label class="col-md-12 col-form-label"><b>Jam Lembur (00.00 - 12.00 AM/ 13.00 - 24.00 = PM)</b></label>
							</div>
							<div id="app">
								<div class="row" v-for="(order, index) in orders" :key="index">
									<div class="col-md-5">
										<div class="form-group">
											<input  placeholder="Jam Masuk Lembur"  type="time" name="jam_lembur_masuk" class="form-control">
										</div>
									</div>
									<div class="col-md-1">
										s/d
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<input  type="time" placeholder="Jam Keluar Lembur" name="jam_lembur_keluar" class="form-control" >
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
							<hr>
							
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
											<input  type="text" placeholder="Bank" name="bank" class="form-control" >
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