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
    <link rel="shortcut icon" href="{{ asset ('favicon.ico') }}">


    <link rel="stylesheet" href="{{ asset ('vendors/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset ('vendors/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset ('vendors/themify-icons/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset ('vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset ('vendors/selectFX/css/cs-skin-elastic.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>


<style>
    .centered {
    
    
  }
   .bg-img {
  
  
  background-position: center;
  display:block;
  width:100%; height:100%;
  object-fit: cover;
  
  position: fixed;
  background-image: url('{{ asset('4207106.jpg')}}');
}
</style>
</head>


                        
<body>
    <div class="bg-img">
    <div class="sufee-login d-flex align-content-center flex-wrap centered">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="{{ route('login') }}">
                        <img src="{{ asset('absensi.png')}}" width="150" height="150" style="margin-bottom: 15px;">
                        <br><br>
                    </a>
                </div>
                <div class="login-form">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <label>Alamat Email</label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email">
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Masuk Sistem</button>
                        <!-- <a href="{{ url('auth/google') }}" style="margin-top: 20px;" class="btn btn-lg btn-danger ">
                            <strong>{{ __('Google Sign in') }}</strong>
                        </a> --> 
                        <div class="register-link m-t-15 text-center">
                            <p>Anda tidak punya akun ? <a href="{{ route('register') }}"> Silahkan Registrasi</a></p>
                        </div>
                        @if (Route::has('password.request'))
                        <a class="btn  btn-primary btn-link" href="{{ route('password.request') }}">
                            {{ __('Lupa Password?') }}
                        </a>
                        @endif
                    </form>
                </div>
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
