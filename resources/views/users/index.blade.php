@extends('layouts.main')
@section('content')
    <?php $title = 'User Pegawai'; ?>
    @foreach($data as $row)

        <div style="text-align: center;" class="modal fade" id="modal-bukti{{$row->id}}" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Bukti Pembayaran</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                        </button>
                    </div>
                    <div id="#{{$row->id}}" class="modal-body">
                        <div class="instruction">
                            <div class="row">
                                <div class="col-md-12">
                                    @if($row->image == NULL)
                                        <h3>Belum Mengirim Bukti Pembayaran</h3>
                                    @else
                                        <img width="50%" height="50%" src="{{ URL::to('/') }}/images/{{ $row->image }}">
                                        <hr>
                                        <div class="row">
                                            <label class="col-md-3 col-form-label">Total Pembayaran</label>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <input type="text" value="{{ rupiah($row->harga) }}"
                                                           class="form-control" readonly="">
                                                </div>
                                            </div>
                                            <label class="col-md-3 col-form-label">Bank</label>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <input type="text" value="{{ $row->bank }}" class="form-control"
                                                           readonly="">
                                                </div>
                                            </div>
                                            <label class="col-md-3 col-form-label">Tgl Bayar</label>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <input type="text" value="{{ $row->tgl_bayar }}"
                                                           class="form-control" readonly="">
                                                </div>
                                            </div>
                                            <label class="col-md-3 col-form-label">Masa Pemakaian</label>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <input type="text" value="{{ $row->bulan }} bulan"
                                                           class="form-control" readonly="">
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <br><br>
                    <div class="modal-footer justify-content-center">
                        <form action="{{ route('users.pay.konfirmasi')}}" method="post">
                            @csrf
                            <input type="hidden" name="user_id" value="{{$row->id}}">
                            <input type="hidden" name="bulan" value="{{$row->bulan}}">

                            <td>
                                <button type="submit" class="btn btn-success">Konfirmasi Pembayaran</button>
                            </td>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    @endforeach


    <!-- modal pembayaran -->
    @foreach($data as $row)

        <div class="modal fade" id="staticBackdrop-{{$row->id}}" data-backdrop="static" data-keyboard="false"
             tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Bayar Aplikasi - {{$row->name}}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{ route('users.pay')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">
                            <h4>Silahkan bayar menurut keadaan finansial hidup anda sekarang.</h4> <br>
                            <div class="row">
                                <label class="col-md-3 col-form-label">Dari Tanggal</label>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <input type="text" name="tgl_bayar" value="{{now()}}" class="form-control"
                                               readonly="">
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="user_id" value="{{$row->id}}" class="form-control" readonly="">

                            <div class="row">
                                @foreach($harga as $a)
                                    <div class="col-md-2">
                                        <label class="btn btn-outline-primary ">
                                            <input type="radio" name="bulan" id="option2" v-model="pilih"
                                                   value="{{ $a->bulan }}" required="">
                                            <br>Paket {{ $a->bulan }} Bulan
                                            <br>{{ rupiah($a->harga) }}
                                        </label>
                                    </div>

                                @endforeach
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">(Mandiri / CV Radja Advertise Indonesia)</label>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <input type="text" name="tgl_bayar" value="1140014145562" class="form-control"
                                               readonly="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">Bukti Transfer</label>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <input type="file" name="image" class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline-success"><h5>Pilih Masa Pemakaian </h5>
                            </button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach

    <!-- modal set lokasi -->
    @foreach($data as $row)

        <div class="modal fade" id="staticBackdrop2-{{$row->id}}" data-backdrop="static" data-keyboard="false"
             tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Set Lokasi - {{$row->name}}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{ route('users.set_lokasi')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">
                            <h4>Tentukan Lokasi Kerja Karyawan.</h4> <br>
                            <div class="row">
                                <label class="col-md-3 col-form-label">Nama Perusahaan</label>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <input type="hidden" name="id" value="{{$row->id}}">
                                        <select name="perusahaan_id" class="form-control">
                                            <option> --Silahkan Pilih Titik Lokasi Kantor--</option>
                                            @foreach($perusahaan as $p)
                                                <option value="{{$p->id}}">{{$p->nama_perusahaan}}
                                                    - {{$p->lokasi}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline-success"><h5>Set Lokasi </h5></button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
        {{--        modal status --}}
        <div class="modal fade" id="status-{{$row->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Jadikan Sales</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{ route('users.status') }}" method="post">
                        @csrf
                        <div class="modal-body">
                            Jadikan atas nama {{$row->name}}, sebagai sales
                        </div>
                        <input type="hidden" value="{{$row->id}}}" name="user_id">
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Jadikan sales</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach

    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">User Pegawai</strong>
                            @if(  auth()->user()->level == 'super')
                                <a style="float: right;" href="{{route('harga.create')}}"
                                   class="btn btn-secondary btn-sm">Buat Harga Aplikasi</a>
                                <a style="float: right;" href="{{route('pegawai.create')}}"
                                   class="btn btn-primary btn-sm">Tambah User</a>

                            @elseif(auth()->user()->level == 'owner' )
                                <a style="float: right;" href="{{route('pegawai.create')}}"
                                   class="btn btn-primary btn-sm">Tambah User</a>

                            @endif
                        </div>
                        <div class="card-body">
                            <table id="ami" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>No.Telepon</th>
                                    <th>Level</th>
                                    <th>Total Bayar</th>
                                    <th>Tgl Bayar</th>
                                    <th>Payment</th>
                                    <th>Masa Pemakaian</th>
                                    <th>Kantor Cabang</th>
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
                                @foreach($data as $row)
                                    @if(auth()->user()->level == 'super')
                                        <tr>
                                            <td>{{$nomor++}}</td>
                                            <td>{{$row->name}}</td>
                                            <td>{{$row->email}}</td>
                                            <td>+62{{$row->notelp}}</td>
                                            <td>{{$row->level}}</td>
                                            <td>{{rupiah($row->harga)}}</td>
                                            <td>{{$row->tgl_bayar}}</td>

                                            <!-- row bayar -->
                                            @if($row->dibayar >= now() && $row->pay == 2 && $row->level == 'super')
                                                <td>Selamanya</td>
                                                <td>
                                                    <button class="btn btn-success">Super Unlimited</button>
                                                </td>
                                            @elseif($row->dibayar >= now() && $row->pay == 2 )
                                                <td>Terlunasi</td>
                                                <td align="center">
                                                    <button class="btn btn-success">
                                                        <?php
                                                        $date = date('Y-m-d', strtotime(now()));
                                                        $date2 = date('Y-m-d', strtotime($row->dibayar));

                                                        $datetime1 = new DateTime($date);
                                                        $datetime2 = new DateTime($date2);
                                                        $interval = $datetime1->diff($datetime2);
                                                        $days = $interval->format('%a');

                                                        echo $days . ' hari lagi';
                                                        ?>
                                                    </button>
                                                </td>
                                            @elseif($row->pay ==1 && auth()->user()->level == 'super')
                                                <form action="{{ route('users.pay.konfirmasi')}}" method="post">
                                                    @csrf
                                                    <input type="hidden" name="user_id" value="{{$row->id}}">
                                                    <input type="hidden" name="bulan" value="{{$row->bulan}}">
                                                    <td>Terlunasi</td>
                                                    <td>
                                                        <button type="submit" class="btn btn-success">Konfirmasi
                                                            Pembayaran
                                                        </button>
                                                    </td>
                                                </form>
                                            @else
                                                <td>Belum Terlunasi</td>
                                                <td>Telah Berakhir</span></td>
                                                <!-- row bayar -->
                                            @endif
                                            @if($row->perusahaan_id == NULL)
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-primary"><i
                                                            class="now-ui-icons business_money-coins"></i> Belum
                                                        Ditentukan
                                                    </button>
                                                </td>
                                            @else
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-warning"><i
                                                            class="now-ui-icons business_money-coins"></i> {{$row->nama_perusahaan}}
                                                    </button>
                                                </td>
                                            @endif

                                            <td class="text-center">
                                                <button data-toggle="modal" data-target="#status-{{$row->id}}"
                                                        class="btn btn-round btn-primary btn-icon bus"><i
                                                        class="menu-icon fa fa-car"></i></button>
                                                @if($row->dibayar >= now() && $row->pay == 2 )

                                                    @if(auth()->user()->level == 'owner' or auth()->user()->level == 'super')
                                                        <form id="data-{{ $row->id }}"
                                                              action="{{route('users.destroy',$row->id)}}"
                                                              method="post">
                                                            {{csrf_field()}}
                                                            {{method_field('delete')}}
                                                        </form>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                                class="btn btn-round btn-danger btn-icon  remove"><i
                                                                class="menu-icon fa fa-trash"></i></button>

                                                    @endif
                                                @elseif ( $row->pay == 1  && auth()->user()->level == 'super')
                                                    <a href="{{url('admin/user/'.$row->id.'/edit')}}"
                                                       data-toggle="modal" data-target="#modal-bukti{{$row->id}}"
                                                       class="btn btn-round btn-info btn-icon btn-sm like"><i
                                                            class="menu-icon fa fa-file"></i></a>
                                                @else
                                                    <form id="data-{{ $row->id }}"
                                                          action="{{route('users.destroy',$row->id)}}" method="post">
                                                        {{csrf_field()}}
                                                        {{method_field('delete')}}
                                                    </form>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop-{{$row->id}}"
                                                            class="btn btn-danger"><i
                                                            class="now-ui-icons business_money-coins"></i> Bayar
                                                    </button>
                                                    <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                            class="btn btn-round btn-danger btn-icon  remove"><i
                                                            class="menu-icon fa fa-trash"></i></button>


                                                @endif
                                            </td>
                                        </tr>
                                    @elseif($row->id_team == auth()->user()->id_team && auth()->user()->level == 'owner')
                                        <tr>
                                            <td>{{$nomor++}}</td>
                                            <td>{{$row->name}}</td>
                                            <td>{{$row->email}}</td>
                                            <td>+62{{$row->notelp}}</td>
                                            <td>{{$row->level}}</td>
                                            <td>{{rupiah($row->harga)}}</td>
                                            <td>{{$row->tgl_bayar}}</td>

                                            <!-- row bayar -->
                                            @if($row->dibayar >= now() && $row->pay == 2 && $row->level == 'super')
                                                <td>Selamanya</td>
                                                <td>
                                                    <button class="btn btn-success">Super Unlimited</button>
                                                </td>
                                            @elseif($row->dibayar >= now() && $row->pay == 2 )
                                                <td>Terlunasi</td>
                                                <td align="center">
                                                    <button class="btn btn-success">
                                                        <?php
                                                        $date = date('Y-m-d', strtotime(now()));
                                                        $date2 = date('Y-m-d', strtotime($row->dibayar));

                                                        $datetime1 = new DateTime($date);
                                                        $datetime2 = new DateTime($date2);
                                                        $interval = $datetime1->diff($datetime2);
                                                        $days = $interval->format('%a');

                                                        echo $days . ' hari lagi';
                                                        ?>
                                                    </button>
                                                </td>
                                            @elseif($row->pay ==1 && auth()->user()->level == 'super')
                                                <form action="{{ route('users.pay.konfirmasi')}}" method="post">
                                                    @csrf
                                                    <input type="hidden" name="user_id" value="{{$row->id}}">
                                                    <input type="hidden" name="bulan" value="{{$row->bulan}}">
                                                    <td>Terlunasi</td>
                                                    <td>
                                                        <button type="submit" class="btn btn-success">Konfirmasi
                                                            Pembayaran
                                                        </button>
                                                    </td>
                                                </form>
                                            @else
                                                <td>Belum Terlunasi</td>
                                                <td>Telah Berakhir</span></td>
                                                <!-- row bayar -->
                                            @endif
                                            @if($row->perusahaan_id == NULL)
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-primary"><i
                                                            class="now-ui-icons business_money-coins"></i> Belum
                                                        Ditentukan
                                                    </button>
                                                </td>
                                            @else
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-warning"><i
                                                            class="now-ui-icons business_money-coins"></i> {{$row->nama_perusahaan}}
                                                    </button>
                                                </td>
                                            @endif

                                            <td class="text-center">
                                                <button data-toggle="modal" data-target="#status-{{$row->id}}"
                                                        class="btn btn-round btn-primary btn-icon bus"><i
                                                        class="menu-icon fa fa-car"></i></button>
                                                @if($row->dibayar >= now() && $row->pay == 2 )

                                                    @if(auth()->user()->level == 'owner' or auth()->user()->level == 'super')
                                                        <form id="data-{{ $row->id }}"
                                                              action="{{route('users.destroy',$row->id)}}"
                                                              method="post">
                                                            {{csrf_field()}}
                                                            {{method_field('delete')}}
                                                        </form>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                                class="btn btn-round btn-danger btn-icon  remove"><i
                                                                class="menu-icon fa fa-trash"></i></button>

                                                    @endif
                                                @elseif ( $row->pay == 1  && auth()->user()->level == 'super')
                                                    <a href="{{url('admin/user/'.$row->id.'/edit')}}"
                                                       data-toggle="modal" data-target="#modal-bukti{{$row->id}}"
                                                       class="btn btn-round btn-info btn-icon btn-sm like"><i
                                                            class="menu-icon fa fa-file"></i></a>
                                                @else
                                                    <form id="data-{{ $row->id }}"
                                                          action="{{route('users.destroy',$row->id)}}" method="post">
                                                        {{csrf_field()}}
                                                        {{method_field('delete')}}
                                                    </form>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop-{{$row->id}}"
                                                            class="btn btn-danger"><i
                                                            class="now-ui-icons business_money-coins"></i> Bayar
                                                    </button>
                                                    <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                            class="btn btn-round btn-danger btn-icon  remove"><i
                                                            class="menu-icon fa fa-trash"></i></button>

                                                @endif
                                            </td>
                                        </tr>
                                    @elseif($row->id == auth()->user()->id && auth()->user()->level == 'pegawai')
                                        <tr>
                                            <td>{{$nomor++}}</td>
                                            <td>{{$row->name}}</td>
                                            <td>{{$row->email}}</td>
                                            <td>+62{{$row->notelp}}</td>
                                            <td>{{$row->level}}</td>
                                            <td>{{rupiah($row->harga)}}</td>
                                            <td>{{$row->tgl_bayar}}</td>

                                            <!-- row bayar -->
                                            @if($row->dibayar >= now() && $row->pay == 2 && $row->level == 'super')
                                                <td>Selamanya</td>
                                                <td>
                                                    <button class="btn btn-success">Super Unlimited</button>
                                                </td>
                                            @elseif($row->dibayar >= now() && $row->pay == 2 )
                                                <td>Terlunasi</td>
                                                <td align="center">
                                                    <button class="btn btn-success">
                                                        <?php
                                                        $date = date('Y-m-d', strtotime(now()));
                                                        $date2 = date('Y-m-d', strtotime($row->dibayar));

                                                        $datetime1 = new DateTime($date);
                                                        $datetime2 = new DateTime($date2);
                                                        $interval = $datetime1->diff($datetime2);
                                                        $days = $interval->format('%a');

                                                        echo $days . ' hari lagi';
                                                        ?>
                                                    </button>
                                                </td>
                                            @elseif($row->pay ==1 && auth()->user()->level == 'super')
                                                <form action="{{ route('users.pay.konfirmasi')}}" method="post">
                                                    @csrf
                                                    <input type="hidden" name="user_id" value="{{$row->id}}">
                                                    <input type="hidden" name="bulan" value="{{$row->bulan}}">
                                                    <td>Terlunasi</td>
                                                    <td>
                                                        <button type="submit" class="btn btn-success">Konfirmasi
                                                            Pembayaran
                                                        </button>
                                                    </td>
                                                </form>
                                            @else
                                                <td>Belum Terlunasi</td>
                                                <td>Telah Berakhir</span></td>
                                                <!-- row bayar -->
                                            @endif
                                            @if($row->perusahaan_id == NULL)
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-primary"><i
                                                            class="now-ui-icons business_money-coins"></i> Belum
                                                        Ditentukan
                                                    </button>
                                                </td>
                                            @else
                                                <td>
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop2-{{$row->id}}"
                                                            class="btn btn-warning"><i
                                                            class="now-ui-icons business_money-coins"></i> {{$row->nama_perusahaan}}
                                                    </button>
                                                </td>
                                            @endif

                                            <td class="text-center">
                                                @if($row->dibayar >= now() && $row->pay == 2 )

                                                    @if(auth()->user()->level == 'owner' or auth()->user()->level == 'super')
                                                        <form id="data-{{ $row->id }}"
                                                              action="{{route('users.destroy',$row->id)}}"
                                                              method="post">
                                                            {{csrf_field()}}
                                                            {{method_field('delete')}}
                                                        </form>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                                class="btn btn-round btn-danger btn-icon  remove"><i
                                                                class="menu-icon fa fa-trash"></i></button>

                                                    @endif
                                                @elseif ( $row->pay == 1  && auth()->user()->level == 'super')
                                                    <a href="{{url('admin/user/'.$row->id.'/edit')}}"
                                                       data-toggle="modal" data-target="#modal-bukti{{$row->id}}"
                                                       class="btn btn-round btn-info btn-icon btn-sm like"><i
                                                            class="menu-icon fa fa-file"></i></a>
                                                @else
                                                    <form id="data-{{ $row->id }}"
                                                          action="{{route('users.destroy',$row->id)}}" method="post">
                                                        {{csrf_field()}}
                                                        {{method_field('delete')}}
                                                    </form>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#staticBackdrop-{{$row->id}}"
                                                            class="btn btn-danger"><i
                                                            class="now-ui-icons business_money-coins"></i> Bayar
                                                    </button>
                                                    <button type="submit" onclick="deleteRow( {{ $row->id }} )"
                                                            class="btn btn-round btn-danger btn-icon  remove"><i
                                                            class="menu-icon fa fa-trash"></i></button>

                                                @endif
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
@section('script')
    <script>
        $(document).ready(function () {
            $('#ami').DataTable({
                dom: 'Bfrtip',
                "scrollX": true,
                paging: false,
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
    <script type="text/javascript">
        $('[data-countdown]').each(function () {
            var $this = $(this), finalDate = $(this).data('countdown');
            $this.countdown(finalDate, function (event) {
                $this.html(event.strftime('%D hari %H:%M:%S'));
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table-datatables').DataTable({
                "scrollX": true,
                lengthMenu: [5, 10, 20, 50, 100, 200, 500, 1000],
                pagingType: 'numbers',
                dom: '<"float-left"B><"float-right"f>rt<"row"<"col-sm-4"l><"col-sm-4"i><"col-sm-4"p>>',
            });
        });
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
    <script>
        $(document).ready(function () {
            let start = moment().startOf('month')
            let end = moment().endOf('month')

            $('#exportpdf').attr('href', '/administrator/reports/order/pdf/' + start.format('YYYY-MM-DD') + '+' + end.format('YYYY-MM-DD'))

            $('#created_at').daterangepicker({
                startDate: start,
                endDate: end
            }, function (first, last) {
                $('#exportpdf').attr('href', '/administrator/reports/order/pdf/' + first.format('YYYY-MM-DD') + '+' + last.format('YYYY-MM-DD'))
            })
        })
    </script>

@endsection
@endsection

