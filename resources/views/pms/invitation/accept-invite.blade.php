
    
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=0">

    <title>Staycationer</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <base href="https://sc.tempsite.in/pms/channel/manager" title="Staycationer">
    <meta name="_token" content="wiVIzLRQsWhEG4iY0rp0NNWfHTy7UKMf7TM2TmUd">
    <link rel="shortcut icon" type="image/png" href="http://127.0.0.1:8000/assets/pms/images/favicon.png">
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
    <link rel="stylesheet" href="http://127.0.0.1:8000/assets/pms/css/app.css">
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
     <main class="main bg-primary-light">
    <section class="section">
        <div class="container-fluid">
            <div class="title">
                <div class="row gx-2 align-items-center">
                    <div class="col">
                        <h1 class="fs-5 mb-0">
                            @if ($detail)
                                Modify User
                            @else
                                Add New User
                            @endif
                        </h1>
                    </div>
                    <div class="col-auto">
                        <!-- <a href="{{ route('pms.user.list') }}" class="btn d-flex btn-small rounded-2 btn-secondary">
                            <i class="material-symbols-outlined me-1">list</i><span>Go to List</span>
                        </a> -->
                    </div>
                </div>
            </div>

            <form method="post" action="{{ route('invite.accept.store', $detail->token ?? '') }}">
                @csrf
                <input type="hidden" name="id" value="{{ $detail->id ?? '' }}">
                <div class="content-box p-3">
                    <div class="form-box">
                        <div class="row">
                            <div class="col-6">
                               

                                <div class="form-field">
                                    <label for="role_id">Role<sup>*</sup></label>
                                    <select name="role_id" id="role_id" readonly
                                        class="form-control @error('role_id') is-invalid @enderror">
                                        <option value="">Select Role</option>
                                        @forelse($roles as $role)
                                                <option value="{{ $role->id }}"
                                                    {{ old('role_id', $detail->role_id ?? '') == $role->id ? 'selected' : '' }}>
                                                    {{ $role->role_name }}
                                                </option>
                                            
                                        @empty
                                            <option value="">No roles found</option>
                                        @endforelse
                                    </select>
                                </div>
                            </div>
                            
                            
                            
                        </div>

                        <!-- Without Company Section -->
                        <div class="row" id="withoutCompany">
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="email_without">Email<sup>*</sup></label>
                                    <input type="email" name="email" id="email_without" readonly
                                        value="{{ old('email', $detail->email ?? '') }}"
                                        class="form-control @error('email') is-invalid @enderror">
                                </div>
                            </div>
                            
                            <div class="col-6">
                                <div class="form-field position-relative">
                                    <label for="password_without">Password<sup>*</sup></label>
                                    <input type="password" name="password" id="password_without"
                                        class="form-control @error('password') is-invalid @enderror"
                                        value="{{ old('password') }}">
                                    <span class="material-symbols-outlined toggle-password"
                                        style="position: absolute; top: 35px; right: 10px; cursor: pointer;"
                                        onclick="togglePassword('password_without')">
                                        visibility
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap pt-2">
                    <button class="btn btn-primary px-5">{{ $detail ? 'UPDATE' : 'SUBMIT' }}</button>
                </div>
            </form>
        </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function togglePassword(fieldId) {
            const passwordInput = document.getElementById(fieldId);
            const toggleIcon = passwordInput.nextElementSibling;
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleIcon.textContent = 'visibility_off';
            } else {
                passwordInput.type = 'password';
                toggleIcon.textContent = 'visibility';
            }
        }
    </script>

        </main>
		<footer class="footer-main section animFade"></footer>
 <!-- footer -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.13/dist/flatpickr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="http://127.0.0.1:8000/assets/pms/js/app.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="http://127.0.0.1:8000/assets/pms/ckeditor/ckeditor.js"></script>
    <script src="http://127.0.0.1:8000/assets/pms/ckeditor/adapters/jquery.js"></script>
    <script src="http://127.0.0.1:8000/assets/pms/ckfinder/ckfinder.js"></script>
    <script src="http://127.0.0.1:8000/assets/pms/js/freeze-table.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
                                });
    </script>

	</body>
</html>
