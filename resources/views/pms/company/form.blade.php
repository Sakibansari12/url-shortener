@extends('pms.layouts.app')
@section('content')
<style>
    .upload-wrapper {
        border: 2px dashed #C7C7C7;
        border-radius: 5px;
        height: 300px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        padding: 15px;
        user-select: none;
        background-color: #fff;
        font-size: 1rem;
        position: relative;
        overflow: hidden;
    }
    .upload-wrapper input[type=file] {
        position: absolute;
        height: 100%;
        width: 100%;
        opacity: 0;
        cursor: pointer;
        z-index: 2;
    }
    .upload-wrapper.is-invalid {
        border-color: #dc3545;
    }
    .upload-info {
        z-index: 1;
        pointer-events: none;
    }
    /* Image preview CSS without cropping: */
    .imagePreview {
        position: relative;
        width: 100%;
        height: 300px;
        overflow: hidden;
    }
    .imagePreview img {
        position: absolute;
        left: 50%;
        top: 50%;
        width: 100%;
        height: 100%;
        object-fit: contain;
        transform: translate(-50%, -50%);
    }
    .remove-preview {
        position: absolute;
        top: 10px;
        right: 10px;
        background-color: rgba(0,0,0,0.5);
        color: white;
        border: none;
        border-radius: 50%;
        width: 30px;
        height: 30px;
        font-size: 18px;
        line-height: 30px;
        text-align: center;
        cursor: pointer;
        z-index: 3;
    }
</style>

<section class="section">
    <div class="container-fluid">
        <div class="title">
            <div class="row gx-2 align-items-center">
                <div class="col">
                    <h1 class="fs-5 mb-0">{{ isset($detail->id) ? 'Modify Company' : 'Add Company' }}</h1>
                </div>
                <div class="col-auto">
                    <a href="{{ route('pms.company.list') }}" class="btn d-flex btn-small rounded-2 btn-secondary">
                        <i class="bi bi-list-task me-2"></i>
                        Manage
                    </a>
                </div>
            </div>
        </div>

        <div class="content-box p-3">
            <div class="form-box">
                <form action="{{ route('pms.company.save', $detail->id ?? '') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" id="id" value="@if($detail){{ $detail->id }}@endif">
                    <input type="hidden" name="remove_image" id="removeImageInput" value="0">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-field">
                                <label for="company_name">Company Name<sup>*</sup></label>
                                <input 
                                    type="text" 
                                    name="company_name" 
                                    value="{{ old('company_name', $detail->name ?? '') }}" 
                                    class="form-control @error('company_name') is-invalid @enderror"
                                >
                                @error('company_name')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="btn-wrap pt-2">
                        <button class="btn btn-primary px-5" type="submit">SUBMIT</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection