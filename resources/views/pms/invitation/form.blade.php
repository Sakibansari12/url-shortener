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
                                Modify Invitation
                            @else
                                Add New Invitation
                            @endif
                        </h1>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('pms.invitation.list') }}" class="btn d-flex btn-small rounded-2 btn-secondary">
                            <i class="material-symbols-outlined me-1">list</i><span>Go to List</span>
                        </a>
                    </div>
                </div>
            </div>

            <form method="post" action="{{ route('pms.invitation.save', $detail->id ?? '') }}">
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
                            
                            
                            
                        </div>

                        <!-- Without Company Section -->
                        <div class="row" id="withoutCompany">
                            
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="email_without">Email<sup>*</sup></label>
                                    <input type="email" name="email" id="email_without"
                                        value="{{ old('email', $detail->email ?? '') }}"
                                        class="form-control @error('email') is-invalid @enderror">
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
@endsection