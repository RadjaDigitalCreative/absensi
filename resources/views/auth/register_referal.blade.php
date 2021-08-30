<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Digital Absensi</title>
    <meta name="description" content="Radja Absen">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}">


    <link rel="stylesheet" href="{{ asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('vendors/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('vendors/themify-icons/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('vendors/selectFX/css/cs-skin-elastic.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>


    <style>
    .centered {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
  }
</style>
</head>

<body>
 <img src="{{ asset('4207106.jpg')}}" >

 <div class="sufee-login d-flex align-content-center flex-wrap centered">
    <div class="container">
        <div class="login-content">
            <div class="login-logo">
                <a href="index.html">
                    <img src="{{ asset('absensi.png')}}" width="150" height="150" style="margin-bottom: 15px;">
                    <br><br>
                </a>
            </div>
            <div class="login-form">
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="form-group">
                        <label>User Name</label>
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Email address</label>
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Password</label>


                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror

                    </div>

                    <div class="form-group ">
                        <label>Confirm Password</label>


                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">

                    </div>

                    <div class="form-group ">
                        <label>Perusahaan</label>
                        <input id="perusahaan" type="text" class="form-control" name="nama_perusahaan" required>

                    </div>
                    <div class="form-group ">
                        <label>Kota</label>
                        <input id="lokasi" type="text" class="form-control" name="lokasi" required >

                    </div>
                    <div class="form-group ">
                        <label>Alamat</label>
                        <input id="alamat" type="text" class="form-control" name="alamat" required >
                    </div>
                    <div class="form-group ">
                        <label>No. Telepon</label>
                        <input id="notelp" type="number" class="form-control" name="notelp" required >
                    </div>
                    <div class="form-group ">
                        <label>Referal</label>
                        <input id="referal" type="text" class="form-control" name="referal" value="{{$data->referal}}" readonly="">
                    </div>
                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Daftar</button>
                    <div class="register-link m-t-15 text-center">
                        <p>Apakah anda sudah punya akun ? <a href="{{ route('login') }}"> Masuk Sistem</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="{{ asset('vendors/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('vendors/popper.js/dist/umd/popper.min.js') }}"></script>
<script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>



 
</body>

</html>
