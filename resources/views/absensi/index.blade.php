@extends('layouts.main')
@section('content')
    <?php $title = 'Absensi'; ?>
    <!-- Button trigger modal -->


    <!-- Modal -->
    @foreach($pegawai as $p)
        @foreach($absensi as $abs)
            @if($abs->bulan == now()->month)
                <div class="modal fade" id="staticBackdrop-{{$p->id}}{{$abs->id}}" data-backdrop="static"
                     data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">{{$abs->date}}</h5><br>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                Silahkan absen menurut keadaan hidup anda sekarang.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                @foreach($cuti as $c)

                                    <?php
                                    $tgl_mulai = date("Y-m-d", strtotime($abs->date));
                                    $tgl_mulai_cuti = date("Y-m-d", strtotime($c->tgl_mulai_cuti));
                                    $tgl_akhir_cuti = date("Y-m-d", strtotime($c->tgl_akhir_cuti));


                                    ?>

                                    @if($ambil_cuti < $c->hari)
                                        @if( ($tgl_mulai >= $tgl_mulai_cuti) && ($tgl_mulai <= $tgl_akhir_cuti))
                                            <form action="{{ route('absensi.cuti.status', $abs->id) }}" method="post">
                                                @csrf

                                                <input type="hidden" name="date" value="{{ $abs->date }}">
                                                <input type="hidden" name="bulan" value="{{ $abs->bulan }}">
                                                <input type="hidden" name="user_id" value="{{ $p->id }}">
                                                <button type="submit" class="btn btn-warning">Ambil Cuti</button>
                                            </form>
                                        @endif
                                    @endif

                                @endforeach


                                <form action="{{ route('absensi.status', $abs->id) }}" method="post">
                                    @csrf
                                    <input type="hidden" name="date" value="{{ $abs->date }}">
                                    <input type="hidden" name="bulan" value="{{ $abs->bulan }}">
                                    <input type="hidden" name="user_id" value="{{ $p->id }}">
                                    <button type="submit" class="btn btn-primary">Hadir</button>
                                </form>
                                <form action="{{ route('absensi.status.cancel', $abs->id) }}" method="post">
                                    @csrf
                                    <input type="hidden" name="date" value="{{ $abs->date }}">
                                    <input type="hidden" name="user_id" value="{{ $p->id }}">
                                    <button type="submit" class="btn btn-danger">Batalkan Kehadiran</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
    @endforeach
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Absensi Kerja</strong><br>
                            @foreach($jam_kerja as $abs)
                                @if($abs->id_team == auth()->user()->id_team)
                                    <button class="btn btn-primary">Absen 15 menit sebelum
                                        jam, {{$abs->jam_masuk}}</button>
                                @endif
                            @endforeach
                            <br><br>
                            <form action="{{ route('absensi.filter')}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-2">
                                        <select data-placeholder="Pilih Bulan" name="filter" class="standardSelect"
                                                tabindex="1">
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
                                        <button type="submit" class="btn btn-outline-primary btn-sm remove"><i
                                                class="fa fa-search"></i>&nbsp;Filter
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-body">
                            <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    @foreach($absensi as $abs)
                                        @if($abs->bulan == now()->month)
                                            <th align="center">{{ $abs->date }}</th>
                                    @endif
                                @endforeach

                                <!-- <th>Dibuat</th>
										<th>Action</th> -->
                                </tr>
                                </thead>
                                <tbody>
                                @php
                                    $nomor = 1;
                                @endphp
                                @foreach($pegawai as $p)
                                    <tr>
                                        <td>{{ $nomor++ }}</td>
                                        <td>{{ $p->name }}</td>
                                        @foreach($absensi as $abs)
                                            @if($abs->bulan == now()->month)
                                                <td align="center">
                                                    @foreach($kerja as $k)
                                                        @if($k->date == $abs->date && $k->user_id == $p->id && $k->status == 1)
                                                            <button type="button" class="btn btn-success btn-sm">Masuk
                                                            </button>
                                                        @elseif($k->date == $abs->date && $k->user_id == $p->id && $k->status == 2)
                                                            <button type="button" class="btn btn-success btn-sm">
                                                                Masuk-Keluar
                                                            </button>
                                                        @elseif($k->date == $abs->date && $k->user_id == $p->id && $k->cuti == 1)
                                                            <button type="button" class="btn btn-warning btn-sm">Cuti
                                                            </button>
                                                        @endif
                                                    @endforeach
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop-{{$p->id}}{{$abs->id}}"
                                                            class="btn btn-primary btn-sm">Cek
                                                    </button>
                                                </td>
                                            @endif
                                        @endforeach
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

    <!-- base absen lembur -->
    @foreach($lembur as $abs)
        @if($abs->id_team == auth()->user()->id_team)
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Absensi Kerja Lembur</strong><br>
                                @foreach($lembur as $abs)
                                    @if($abs->id_team == auth()->user()->id_team )
                                        <!--<button class="btn btn-success">Silahkan Absen Lembur dari jam {{$abs->jam_masuk_lembur}} sampai jam {{$abs->jam_keluar_lembur}}, jika lembur telah selesai.</button>-->
                                        @endif
                                    @endforeach
                                </div>
                                <div class="card-body">
                                    <table id="table2" class="table table-striped table-bordered " cellspacing="0"
                                           width="100%">
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama</th>
                                            @foreach($absensi as $abs)
                                                @if($abs->bulan == now()->month)
                                                    <th align="center">{{ $abs->date }}</th>
                                            @endif
                                        @endforeach

                                        <!-- <th>Dibuat</th>
										<th>Action</th> -->
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @php
                                            $nomor = 1;
                                        @endphp
                                        @foreach($pegawai_lembur as $p)
                                            <tr>
                                                <td>{{ $nomor++ }}</td>
                                                <td>{{ $p->name }}</td>
                                                @foreach($absensi as $abs)
                                                    @if($abs->bulan == now()->month)
                                                        <td align="center">
                                                            <form
                                                                action="{{ route('absensi.lembur.status', $abs->id) }}"
                                                                method="post">
                                                                @csrf
                                                                <input type="hidden" name="date"
                                                                       value="{{ $abs->date }}">
                                                                <input type="hidden" name="bulan"
                                                                       value="{{ $abs->bulan }}">
                                                                <input type="hidden" name="user_id"
                                                                       value="{{ $p->id }}">
                                                                @foreach($kerja as $k)

                                                                    @if($k->date == $abs->date && $k->user_id == $p->id && $k->lembur >= 1)
                                                                        <button type="button"
                                                                                class="btn btn-success btn-sm"
                                                                                data-toggle="modal"
                                                                                data-target="#modal-lembur{{$k->id}}">
                                                                            Masuk Lembur
                                                                        </button>
                                                                    @else
                                                                    @endif
                                                                @endforeach
                                                                <button type="submit" class="btn btn-warning btn-sm">
                                                                    Absen Lembur
                                                                </button>
                                                            </form>
                                                        </td>
                                                    @endif
                                                @endforeach
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
        @endif
    @endforeach
@section('script')

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "scrollX": true
            });
        });
    </script>
@endsection
@endsection
