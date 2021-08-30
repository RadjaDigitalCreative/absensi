<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">

        <div class="navbar-header">
            <img src="{{ asset('absensi.png')}}" width="50" height="50" style="margin-bottom: 15px;">
            <!--<h2 class="menu-title">Radja Absen</h2><!-- /.menu-title --> -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <br><br>
        </div>

        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="{{ route('dashboard') }}"> <i class="menu-icon fa fa-dashboard"></i>Beranda </a>
                </li>
                @if(auth()->user()->level == 'super')
                <li>
                    <a href="{{ route('notifikasi') }}"> <i class="menu-icon fa fa-telegram"></i>Notifikasi </a>
                </li>
                @endif

                <h3 class="menu-title">Master Menu</h3><!-- /.menu-title -->
                @if(auth()->user()->level != 'pegawai')

                <li>
                    <a href="{{ route('perusahaan') }}"> <i class="menu-icon ti-home"></i>Perusahaan </a>
                </li>
                <li>
                    <a href="{{ route('cabang_perusahaan') }}"> <i class="menu-icon ti-car"></i>Cabang Perusahaan </a>
                </li>
             
                @endif
                 @if(auth()->user()->level == 'super')
                    <li>
                    <a href="{{ route('agen') }}"> <i class="menu-icon ti-github"></i>Agen Sistem </a>
                </li>
                @endif
                @if(auth()->user()->level != 'pegawai')

                <li>
                    <a href="{{ route('absen') }}"> <i class="menu-icon ti-harddrive"></i>Hari Kerja </a>
                </li>
                <li>
                    <a href="{{ route('absensi') }}"> <i class="menu-icon ti-files"></i>Absensi </a>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>Cuti</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-map-o"></i><a href="{{ route('cuti.create') }}">Setting Cuti</a></li>
                        <li><i class="menu-icon fa fa-table"></i><a href="{{ route('cuti') }}">Tabel Cuti</a></li>
                    </ul>
                </li>
                <li>
                    <a href="{{ route('pegawai') }}"> <i class="menu-icon ti-github"></i>Pegawai</a>
                </li>
                <li>
                    <a href="{{ route('gaji') }}"> <i class="menu-icon ti-money"></i>Gaji</a>
                </li>
                @endif
                <li>
                    <a href="{{ route('rekap') }}"> <i class="menu-icon ti-briefcase"></i>Rekap</a>
                </li>
                <li>
                    <a href="{{ route('users') }}"> <i class="menu-icon ti-user"></i>Users</a>
                </li>

                <li>
                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="menu-icon ti-control-backward"></i> Logout</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside><!-- /#left-panel -->


