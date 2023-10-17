@extends('website.master')

@section('title')
    About us
@endsection


@section('body')

    <section class="">
        <div class="container-fluid py-5 bg_gray">
            <div class="row">
                <div class="col">
                    <h1 class="text-center">Login | Registration</h1>
                </div>
            </div>
        </div>
        <div class="container py-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card border-0 shadow h-100">
                        <div class="card-body mb-3  ">
                            <h1>Login Form</h1>
                            <hr>
                            <h4 class="text-center text-success">{{Session::get('massage')}}</h4>
                            <form action="{{ route('student-login') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="email" name="email" placeholder="Email" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Password</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="password" name="password" placeholder="Password" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-success" name="loginBtn">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-0 shadow h-100">
                        <div class="card-body mb-3  ">
                            <h1>Registration Form</h1>
                            <hr>
                            <form action="{{ route('register') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">Full Name</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="name" name="name" placeholder="Name" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="email" name="email" placeholder="Email" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Password</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="password" name="password" placeholder="Password" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Confirm Password</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Mobile</label>
                                    <div class="col-md-9">
                                        <input class="form-control" type="number" name="mobile" placeholder="Mobile" id="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-success" name="registrationBtn">Registration</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
