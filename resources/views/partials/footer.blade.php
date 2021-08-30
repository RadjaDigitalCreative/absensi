<script src="{{ asset('vendors/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('vendors/popper.js/dist/umd/popper.min.js') }}"></script>
<script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>


<script src="{{ asset('vendors/chart.js/dist/Chart.bundle.min.js') }}"></script>
<script src="{{ asset('assets/js/dashboard.js') }}"></script>
<script src="{{ asset('assets/js/widgets.js') }}"></script>
<script src="{{ asset('vendors/jqvmap/dist/jquery.vmap.min.js') }}"></script>
<script src="{{ asset('vendors/jqvmap/examples/js/jquery.vmap.sampledata.js') }}"></script>
<script src="{{ asset('vendors/jqvmap/dist/maps/jquery.vmap.world.js') }}"></script>
<script src="{{ asset('js/unpkg.js') }}"></script>
{{--<script src="{{ asset('js/code.js') }}"></script>--}}
{{--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--}}
{{--<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>--}}

<!-- datatables -->

<script src="{{ asset('vendors/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js') }}"></script>
<script src="{{ asset('vendors/jszip/dist/jszip.min.js') }}"></script>
<script src="{{ asset('vendors/pdfmake/build/pdfmake.min.js') }}"></script>
<script src="{{ asset('vendors/pdfmake/build/vfs_fonts.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-buttons/js/buttons.html5.min.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-buttons/js/buttons.print.min.js') }}"></script>
<script src="{{ asset('vendors/datatables.net-buttons/js/buttons.colVis.min.js') }}"></script>
<script src="{{ asset('assets/js/init-scripts/data-table/datatables-init.js') }}"></script>
<script src="{{ asset('vendors/chosen/chosen.jquery.min.js') }}"></script>

@include('sweet::alert')
@yield('script')
<script>
    jQuery(document).ready(function() {
        jQuery(".standardSelect").chosen({
            disable_search_threshold: 10,
            no_results_text: "Oops, nothing found!",
            width: "100%"
        });
    });

</script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery(".standardSelect2").chosen({
            disable_search_threshold: 10,
            no_results_text: "Oops, nothing found!",
            width: "100%"
        });
    });
</script>

<script>
    $(document).ready( function () {
      $('#table').DataTable({
        "scrollX": true,
      });
    } );
  </script>
  <script>
    $(document).ready( function () {
      $('#table2').DataTable({
        "scrollX": true,
      });
    } );
  </script>
<script>
    (function($) {
        "use strict";

        jQuery('#vmap').vectorMap({
            map: 'world_en',
            backgroundColor: null,
            color: '#ffffff',
            hoverOpacity: 0.7,
            selectedColor: '#1de9b6',
            enableZoom: true,
            showTooltip: true,
            values: sample_data,
            scaleColors: ['#1de9b6', '#03a9f5'],
            normalizeFunction: 'polynomial'
        });
    })(jQuery);
</script>
<script type="text/javascript">
    function deleteRow(id)
    {
      swal({
        title: "Apakah Anda Yakin?",
        text: "Menghapus data ini!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
      .then((willDelete) => {
        if (willDelete) {
            $('#data-'+id).submit();
        }
    });
  }

</script>

</body>

</html>
