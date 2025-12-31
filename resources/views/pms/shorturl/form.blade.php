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
                                Modify ShortUrl
                            @else
                                Add New ShortUrl
                            @endif
                        </h1>
                    </div>
                    <div class="col-auto">
                        <a href="{{ route('pms.shorturl.list') }}" class="btn d-flex btn-small rounded-2 btn-secondary">
                            <i class="material-symbols-outlined me-1">list</i><span>Go to List</span>
                        </a>
                    </div>
                </div>
            </div>

            <form method="post" action="{{ route('pms.shorturl.save', $detail->id ?? '') }}">
                @csrf
                <input type="hidden" name="id" value="{{ $detail->id ?? '' }}">
                <div class="content-box p-3">
                    <div class="form-box">
                        <div class="row" id="withoutCompany">
                            
                            <div class="col-6">
                                <div class="form-field">
                                    <label for="original_url">Original Url<sup>*</sup></label>
                                    <input type="text" name="original_url" id="original_url"
                                        value="{{ old('original_url', $detail->original_url ?? '') }}"
                                        class="form-control @error('original_url') is-invalid @enderror">
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