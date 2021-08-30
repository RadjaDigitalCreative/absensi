<div id="view-show{{$links->id}}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample-{{$links->id}}">
	
	<div class="card-body">
		<h6 class="card-title">Bonus Member</h6>
		<table id="table_bonus-{{$links->id}}" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>No</th>
					<th>Nama</th>
					<th>Jabatan</th>
					<th>Payment</th>
					<th>Bayar</th>
					<th>Bonus %</th>
					<th>Upah</th>
				</tr>
			</thead>
			<tbody>
				@php
				$nomor = 1;
				$bonus = 0; 

				@endphp
				@foreach ($data-> sortbyDesc('dibayar') as $row)
				@if ($links->referal == $row->referal && $row->agen != 1)
				<tr>
					<td>{{$nomor++}}</td>
					<td>{{$row->name}}</td>
					<td>
						@if(auth()->user()->id_team == 1 && $row->id_team == 1)
						Super
						@endif
						{{$row->level}}
					</td>
					@if($row->dibayar >= now() && $row->pay == 2 )
					<td>Terlunasi</td>
					
					@elseif($row->pay ==1)
					<form action="{{route('transfer.konfirmasi', $row->id)}}" method="post">
						{{ csrf_field() }}
						{{ method_field('PATCH')}}
						<input type="hidden" name="user_id" value="{{$row->id}}">
						<input type="hidden" name="dibayar" value="{{$row->tgl_bayar}}">
						<td>Terlunasi</td>
						<td><button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button></td>
					</form>
					@else
					<td>Belum Terlunasi</td>
					
					@endif

					<td>{{ rupiah($row->harga)}}</td>
					<td>
						@foreach ($upah as $bagi)
						@if ($bagi->user_id == $links->id && $bagi->agen_status == $row->agen)
						{{$bagi->persen}} %
						@endif
						@endforeach
					</td>
					<td>
						@foreach ($upah as $bagi)
						@if ($bagi->user_id == $links->id && $bagi->agen_status == $row->agen)
						<?php 
						$upah_bersih = $row->harga *($bagi->persen / 100);
						echo rupiah($upah_bersih);
						?>
						<?php $bonus += $upah_bersih; ?>

						@endif
						@endforeach
					</td>
				</tr>
				@endif
				@endforeach
			</tbody>
			<tr>
				<!-- <td class="text-center"><button type="button" class="btn btn-danger">Cairkan</button></td> -->
				<td colspan="6" class="text-center"><b>Total Bonus</b></td>
				<td><b>{{rupiah($bonus)}}</b></td>
			</tr>
		</table>
	</div>
	<div class="card-body">
		<a data-toggle="modal" data-target="#modal-bonus{{$links->id}}" href=""><button type="button" class="btn btn-danger"><i class="now-ui-icons business_bulb-63"></i> Edit Bonus </button></a>

	

	</div>
</div>