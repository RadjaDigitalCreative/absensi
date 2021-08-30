@include('partials.header')
@include('layouts.sidebar')
<div id="right-panel" class="right-panel">
	@include('layouts.header')
	
	@yield('content')

</div>
@include('partials.footer')