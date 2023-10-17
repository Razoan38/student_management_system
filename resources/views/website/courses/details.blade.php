
@extends('website.master')

@section('title')

    {{$course->title}}
@endsection


@section('body')


{{--        <div class="container">--}}
{{--           <div class="col">--}}
{{--            <div class="col-md-6">--}}
{{--                <div class="card card-body h-100 shadow">--}}
{{--                    <img src="{{asset('/website/img/cc1.jpg')}}" alt="" class="card-image-top">--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-md-6">--}}
{{--                <div class="card card-body h-100 shadow">--}}
{{--                    <h3 class="text-center">Android app development</h3>--}}
{{--                    <h5>Trainer name: Faysal</h5>--}}
{{--                    <p> Course Free: Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <p>venu : karwanbazar ,Dhaka,1200</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Enroll Now</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--           </div>--}}

{{--                --}}
{{--           </div>--}}


<section>
    <div class="container-fluid py-5 bg-secondary">
        <div class="row">
            <div class="col">
                <h1 class="text-center text-white">Contact With Us</h1>
            </div>
        </div>
    </div>
    <div class="container py-5">
        <div class="row">
            <div class="col-md-6">
                <div class="card card-body  h-100 shadow">
                    <div class="card card-body h-100 shadow">
                        <img src="{{asset($course->image)}}" alt="" class="card-image-top">
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card card-body h-100 shadow">
                    <h3 class="text-center"> {{$course->title}}</h3>
                    <h5>Trainer name:  {{$course->teacher->name}}</h5>
                    <p> Stating Date  {{$course->staring_date}}</p>

                    @if($course->offer_fee > 0)
                    <p>Course Regular Fee : {{$course->fee}}</p>
                    <p>Course Offer Fee : {{$course->offer_fee}}</p>
                    @else
                        <h4>Course Fee :{{$course->offer_fee}}</h4>
                    @endif
                    <h4>venu : karwanbazar ,Dhaka,1200</h4>
                    <hr/>
                    <a href="{{route('enroll-now',['id' => $course->id ])}}" class="btn btn-outline-success px-5 {{$status == true ? 'disabled' : ''}} ">Enroll Now</a>
                    @if($status)
                        <p class="text-center text-danger">Your are already enroll this course</p>
                    @endif
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <div class="card card-body">
                        <h2>Course DetailS</h2>
                        <hr/>
                        <h2>{{$course->description}}</h2>
                    </div>
                </div>
            </div>
        </div>

    </div>

</section>

@endsection
