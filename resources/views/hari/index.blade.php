@extends('layouts.main')
@section('content')
    <?php $title = 'Hari Kerja'; ?>

    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Tabel Hari Kerja</strong>
                            <a href="{{route('absen.destroyAll')}}">
                                <button style="float: right;" class="btn btn-danger btn-sm">Hapus Semua Hari</button>
                            </a>
                            <a style="float: right;" href="{{route('absen.create')}}" class="btn btn-primary btn-sm">Buat
                                Hari Kerja</a><br><br>
                            <a style="float: right;" href="{{route('absen.create.jam')}}"
                               class="btn btn-success btn-sm">Buat Jam Kerja</a><br><br>
                            <div class="card-body">
                                <table class="table table-striped table-bordered">
                                    <form action="{{ route('absen.filter')}}" method="post">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-6">
                                                <select data-placeholder="Pilih Bulan" name="filter"
                                                        class="standardSelect" tabindex="1">
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
                                    <br>
                                    <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jam Kerja</th>
                                        <th>Dibuat</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php
                                        $nomor =1;
                                    @endphp
                                    @foreach($absensi as $abs)
                                        <tr>
                                            <td>{{$nomor++}}</td>
                                            <td>{{$abs->date}}</td>
                                            @if(stripos($abs->date, 'Saturday') !== FALSE)
                                                <td>{{$abs->jam_masuk}} - {{$abs->jam_keluar2}}</td>
                                            @else
                                                <td>{{$abs->jam_masuk}} - {{$abs->jam_keluar}}</td>
                                            @endif
                                            <td>{{$abs->created_at}}</td>
                                            <td align="center">
                                                <form id="data-{{ $abs->id }}"
                                                      action="{{route('absen.destroy',$abs->id)}}" method="post">
                                                    {{csrf_field()}}
                                                    {{method_field('delete')}}
                                                </form>
                                                @csrf
                                                @method('DELETE')

                                                <button type="submit" onclick="deleteRow( {{ $abs->id }} )"
                                                        class="btn btn-outline-danger btn-sm remove"><i
                                                        class="fa fa-trash"></i>&nbsp;Hapus
                                                </button>
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
