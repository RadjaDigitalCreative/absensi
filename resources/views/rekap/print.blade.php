<?php 
function rupiah($m)
{
  $rupiah = "Rp ".number_format($m,0,",",".").",-";
  return $rupiah;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Radja Absen</title>
  <meta name="description" content="Sufee Admin - HTML5 Admin Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="apple-touch-icon" href="apple-icon.png">
  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}">

  <link rel="stylesheet" href="{{ asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/font-awesome/css/font-awesome.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/themify-icons/css/themify-icons.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/flag-icon-css/css/flag-icon.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/selectFX/css/cs-skin-elastic.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/jqvmap/dist/jqvmap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/chosen/chosen.min.css') }}">



  <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
  @yield('style')

</head>

<body onload="window.print();">
  <div style="margin-top: 15px;" class="content">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h4 class="card-title">Slip Gaji <span class="font-weight-light"># {{ $pegawai->name }}  </span></h4>
          <h5 class="card-description mt-3 font-weight-bold">
            <hr> Radja Digital Creative
          </h5>
        </div>
      </div>
    </div>
    <div class="card-body">
      <div class="col-md-12">
        <div class="card">
          <div class="card-body">
            <div class="mx-auto d-block">
              @if($pegawai->image == NULL)
              <img class="rounded-circle mx-auto d-block" width="20%" height="20%" src="{{ asset('images/logo.png') }}" alt="Card image cap">
              @else
              <img class="rounded-circle mx-auto d-block" width="20%" height="20%" src="{{ URL::to('/') }}/images/{{ $pegawai->image }}" alt="Card image cap">
              @endif
              <h5 class="text-sm-center mt-2 mb-1">{{$pegawai->name}}</h5>
              <div class="location text-sm-center"><i class="fa fa-mail"></i> {{$pegawai->email}}</div>
            </div>
            <hr>
            <div class="card-text text-sm-center">
              <h4><strong class="card-title mb-5">Total Gaji : {{rupiah($hasil)}}</strong></h4>
            </div>
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <strong class="card-title mb-3">Hari Kerja Saya</strong>
                </div>
                <div class="card-body">
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Jumlah Hari Kerja</label></div>
                    <div class="col-12 col-md-9">{{$data4->total}} Hari</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Masuk Kerja</label></div>
                    <div class="col-12 col-md-9">{{$data3->total}} Hari</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Lembur</label></div>
                    <div class="col-12 col-md-9">{{$data3->total_lembur}} Hari</div>
                  </div>
                  

                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <strong class="card-title mb-3">Gaji Saya</strong>
                </div>
                <div class="card-body">
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Gaji Pokok</label></div>
                    <div class="col-12 col-md-9">{{rupiah($data->total)}}</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Total Potongan</label></div>
                    <div class="col-12 col-md-9">{{rupiah($data2->total)}}</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Perhari</label></div>
                    <div class="col-12 col-md-9">{{rupiah($hasil2)}}</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Lembur Perhari</label></div>
                    <div class="col-12 col-md-9">{{rupiah($data->total_lembur)}}</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Lembur Saat ini</label></div>
                    <div class="col-12 col-md-9">{{rupiah($hasil3)}}</div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Gaji Keseluruhan Saat Ini</label></div>
                    <div class="col-12 col-md-9"><b>{{rupiah($hasil)}}</b></div>
                  </div>
                  <div class="row form-group">
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Rekening</label></div>
                    <div class="col-12 col-md-9"></div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <strong class="card-title mb-3">Komponen Gaji</strong>
                </div>
                <div class="card-body">
                  <div class="row form-group">
                    @foreach($data5 as $row)
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">{{$row->komponen}}</label></div>
                    <div class="col-12 col-md-9">{{rupiah($row->total)}}</div>
                    @endforeach
                  </div>

                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <strong class="card-title mb-3">Komponen Potongan</strong>
                </div>
                <div class="card-body">
                  <div class="row form-group">
                    @foreach($data6 as $row)
                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">{{$row->komponen}}</label></div>
                    <div class="col-12 col-md-9">{{rupiah($row->total)}}</div>
                    @endforeach
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer text-center">
      <h4 class="card-title">Terimakasih<span class="font-weight-light"></span></h4>
    </div>
  </div>
</div>
</div>

</body>
</html>
