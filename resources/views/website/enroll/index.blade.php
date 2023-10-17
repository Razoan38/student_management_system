@extends('website.master')

@section('title')
   Enroll Page
@endsection


@section('body')

    <section class="">
        <div class="container-fluid py-5 bg_gray">
            <div class="row">
                <div class="col">
                    <h1 class="text-center">Enroll Now of {{$course->title}}</h1>
                </div>
            </div>
        </div>
        <div class="container py-5">
            <div class="row">

                <div class="col-md-8">
                    <div class="card border-0 shadow h-100">
                        <div class="card-body mb-3  ">
                            <h1>Enroll Form</h1>
                            <h4 class="text-center text-success">{{Session::get('message')}}</h4>

                            <hr>
                            <form action="{{ route('enroll.new',['id' => $course->id]) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">Full Name</label>
                                    <div class="col-md-9">
                                        @if(isset($student->name))
                                        <input required class="form-control" value="{{$student->name}}" type="name" name="name" placeholder="Name" id="">
                                        @else
                                            <input type="text" class="form-control" name="name">
                                        @endif
                                        <samp class="text-danger">{{$errors->has('name') ? $errors->first('name') : '' }}</samp>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">

                                        @if(isset($student->email))
                                        <input readonly class="form-control" value="{{$student->email}}" type="email" name="email" placeholder="Email" id="">
                                        @else
                                            <input type="text" class="form-control" name="email">
                                        @endif

                                        <samp class="text-danger">{{$errors->has('email') ? $errors->first('email') : '' }}</samp>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Mobile</label>
                                    <div class="col-md-9">
                                        @if(isset($student->mobile))
                                        <input required class="form-control"  value="{{$student->mobile}}" type="number" name="mobile" placeholder="Mobile" id="">
                                        @else
                                            <input type="number" class="form-control" name="mobile">
                                        @endif
                                        <samp class="text-danger">{{$errors->has('mobile') ? $errors->first('mobile') : '' }}</samp>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Payment Option</label>
                                    <div class="col-md-9">
                                   <label><input  type="radio" name="payment_type" checked value="cash" />Cash</label>
                                   <label><input  type="radio" name="payment_type" value="online" />Online</label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-success" name="registrationBtn">Enroll Now</button>
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
