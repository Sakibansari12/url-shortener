@extends('pms.layouts.app')
@section('content')
    <style>
        .form-multiselect .dropdown-menu,
        .dropdown-menu {
            max-height: 300px;
            overflow-y: auto;
        }

        #property-field {
            display: none;
        }

        .toggle-password {
            cursor: pointer;
        }

        #company, #withoutCompany {
            display: none;
            flex-wrap: wrap;
        }

        #withoutCompany {
            display: flex; /* Show by default */
        }
    </style>

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
                        <a href="{{ route('pms.user.list') }}" class="btn d-flex btn-small rounded-2 btn-secondary">
                            <i class="material-symbols-outlined me-1">list</i><span>Go to List</span>
                        </a>
                    </div>
                </div>
            </div>

            <form method="post" action="{{ route('pms.user.save', $detail->id ?? '') }}">
                @csrf
                <input type="hidden" name="id" value="{{ $detail->id ?? '' }}">
                <div class="content-box p-3">
                    <div class="form-box">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="role_id">Role<sup>*</sup></label>
                                    <select name="role_id" id="role_id"
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
                           @php
                                $admin = Auth::guard('admin')->user();
                                $adminCompanyId = ($admin->role_id == 2) ? $admin->company_id : null;
                            @endphp

                            <div class="col-6">
                                <div class="form-field">
                                    <label for="company_id">Company<sup>*</sup></label>
                                    @if($admin->role_id == 2)
                                        <input type="hidden" name="company_id" value="{{ $adminCompanyId }}">
                                    @endif

                                    <select name="company_id" id="company_id"
                                        class="form-control @error('company_id') is-invalid @enderror"
                                        {{ $admin->role_id == 2 ? 'disabled' : '' }}>

                                        <option value="">Select Company</option>

                                        @forelse($companies as $company)
                                            <option value="{{ $company->id }}"
                                                {{
                                                    old(
                                                        'company_id',
                                                        $adminCompanyId ?? ($detail->company_id ?? '')
                                                    ) == $company->id ? 'selected' : ''
                                                }}>
                                                {{ $company->name }}
                                            </option>
                                        @empty
                                            <option value="">No company found</option>
                                        @endforelse
                                    </select>
                                </div>
                            </div>

                            
                            
                        </div>

                        <!-- Without Company Section -->
                        <div class="row" id="withoutCompany">
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="name_without">Name<sup>*</sup></label>
                                    <input type="text" name="name" id="name_without"
                                        value="{{ old('name', $detail->name ?? '') }}"
                                        class="form-control @error('name') is-invalid @enderror">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="email_without">Email<sup>*</sup></label>
                                    <input type="email" name="email" id="email_without"
                                        value="{{ old('email', $detail->email ?? '') }}"
                                        class="form-control @error('email') is-invalid @enderror">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="mobile_without">Mobile<sup>*</sup></label>
                                    <input type="text" name="mobile" id="mobile_without"
                                        value="{{ old('mobile', $detail->mobile_no ?? '') }}"
                                        class="form-control @error('mobile') is-invalid @enderror" maxlength="13"
                                        oninput="this.value = this.value.replace(/(?!^\+)\D/g, '')">
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
@endsection