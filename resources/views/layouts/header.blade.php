<!-- modal referal -->

<div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Halo pengguna {{auth()->user()->name}}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            
            
            <div class="modal-body">
                <h4>Silahkan sebarkan link referal berikut ini.</h4> <br>
                <input type="text" name="referal" value="http://127.0.0.1:8000/register/referal/{{auth()->user()->referal}}" class="form-control" readonly="" id="myInput">
            </div>
            <div class="modal-footer">
                <button onclick="myFunction()" class="btn btn-outline-success">Copy Referal  </button>
            </div>
            
        </div>
    </div>
</div>
<!-- modal pembayaran -->

<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Halo pengguna {{auth()->user()->name}}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{ route('profile')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <h4>Silahkan update data profil anda sekarang.</h4> <br>
                    <input type="hidden" name="user_id" value="{{auth()->user()->id}}" class="form-control" readonly="">

                    <div class="row">
                        <label class="col-md-3 col-form-label">Nama Anda</label>
                        <div class="col-md-5">
                            <div class="form-group">
                                <input type="text" name="nama" value="{{auth()->user()->name}}" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-md-3 col-form-label">Email</label>
                        <div class="col-md-5">
                            <div class="form-group">
                                <input type="email" name="email" value="{{auth()->user()->email}}" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-md-3 col-form-label">Foto Sebelumnya</label>
                        <div class="col-md-5">
                            <div class="form-group">
                                <img style="border-radius: 30%;" src="{{ URL::to('/') }}/images/{{ auth()->user()->image }}" alt="...">

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-md-3 col-form-label">Upload Gambar</label>
                        <div class="col-md-5">
                            <div class="form-group">
                                <input type="file" name="image" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-outline-success">Update Data  </button>

                </div>
            </form>
        </div>
    </div>
</div>


<header id="header" class="header">

    <div class="header-menu">

        <div class="col-sm-7">
            <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
            <div class="header-left">
                <button class="search-trigger"><i class="fa fa-search"></i></button>
                <div class="form-inline">
                    <form class="search-form">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                        <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                    </form>
                </div>

                <div class="dropdown for-notification">
                    <!-- <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-bell"></i>
                        <span class="count bg-danger">5</span>
                    </button> -->
                    <div class="dropdown-menu" aria-labelledby="notification">
                        <p class="red">You have 3 Notification</p>
                        <a class="dropdown-item media bg-flat-color-1" href="#">
                            <i class="fa fa-check"></i>
                            <p>Server #1 overloaded.</p>
                        </a>
                        <a class="dropdown-item media bg-flat-color-4" href="#">
                            <i class="fa fa-info"></i>
                            <p>Server #2 overloaded.</p>
                        </a>
                        <a class="dropdown-item media bg-flat-color-5" href="#">
                            <i class="fa fa-warning"></i>
                            <p>Server #3 overloaded.</p>
                        </a>
                    </div>
                </div>

                <div class="dropdown for-message">

                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="user-area dropdown float-right">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <!-- <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"> -->
                    <img class="user-avatar rounded-circle" src="{{ URL::to('/') }}/images/{{ auth()->user()->image }}"> {{ auth()->user()->name}} 
                </a>
                <div class="user-menu dropdown-menu">
                   <a class="nav-link" href="{{ route('profile') }}" data-toggle="modal" data-target="#staticBackdrop"><i class="fa fa-user"></i> Profile</a>
                   <a class="nav-link" href="{{ route('profile') }}" data-toggle="modal" data-target="#staticBackdrop2"><i class="fa fa-code"></i> Referal</a>
                   <a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="fa fa-power-off"></i> Logout</a>
                   <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </div>
        </div>

    </div>
</div>

</header><!-- /header -->
<!-- Header-->

<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>{{$title}}</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">{{$title}}</li>
                </ol>
            </div>
        </div>
    </div>
</div>
@section('script')
<script>
    function myFunction() {
        const  copyText = document.getElementById("myInput");
        copyText.select();
        copyText.setSelectionRange(0, 99999)
        document.execCommand("copy");
        alert("Alamat Referal berhasil di salin: " + copyText.value);
    }
</script>
@endsection