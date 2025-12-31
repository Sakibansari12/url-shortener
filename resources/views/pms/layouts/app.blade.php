<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=0">

    <title>{{env('APP_NAME')}}</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <base href="https://sc.tempsite.in/pms/channel/manager" title="Staycationer">
    <meta name="_token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" type="image/png" href="{{asset('assets/pms/images/favicon.png')}}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.13/dist/flatpickr.min.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="{{asset('assets/pms/css/app.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css" />

     <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />

    <style type="text/css">
        .toast-message{color: white !important;}
        /* Custom toastr success message */
        .toast.toast-success {
            background-color: green !important;
            color: white !important;
        }
        
        .toast.toast-error {
            background-color: red !important;
            color: white !important;
        }
          .fancybox__backdrop {
        /* backdrop-filter: blur(8px); Blur strength */
        background-color: rgba(0, 0, 0, 0.4) !important; /* Optional: dark transparent background */
    }
    </style>
</head>
<body>
	<div class="wrapper">
        @include('pms.layouts.header') <!-- header -->
        <main class="main bg-primary-light">
            @include('pms.layouts.sidebar') <!-- sudebar -->

        	@yield('content')  <!--  content -->

        </main>
		@include('pms.layouts.footer') <!-- footer -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.13/dist/flatpickr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('assets/pms/js/app.js') }}"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="{{ asset('assets/pms/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset('assets/pms/ckeditor/adapters/jquery.js') }}"></script>
    <script src="{{ asset('assets/pms/ckfinder/ckfinder.js') }}"></script>
    <script src="{{asset('assets/pms/js/freeze-table.min.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            @if (session()->has('success'))
                toastr.success("{{ session('success') }}", '', {timeOut: 1000});
            @endif
            @if (session()->has('error'))
                toastr.error("{{ session('error') }}", '', {timeOut: 1000});
            @endif
        });
    </script>

	</body>
</html>
