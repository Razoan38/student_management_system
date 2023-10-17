
@extends('website.master')

@section('title')
   All Course
@endsection


@section('body')


 <div class="container py-5">
    <div class="container-fluid py-5 bg-secondary">
        <div class="row">
            <div class="col">
                <h1 class="text-center text-white">All Course</h1>
                <h3 class="text-center text-danger">{{Session::get('message')}}</h3>
            </div>
        </div>
    </div>
    <div class="row pt-3 ">
        @foreach($allCourses as $allCourse)
        <div class="col-md-3 pt-3">
            <div class="card h-100  ">
                <img src="{{asset($allCourse->image)}}" alt="" class="card-image-top" style="height: 300px;">
                <div class="card-body ">
                    <h4>{{$allCourse->title}}</h4>
                    <h5>{{$allCourse->teacher->name}}</h5>
                    <p>price :{{$allCourse->fee}}</p>
                    <p>Stating Date:{{$allCourse->starting_date}}</p>
                    <hr/>
                    <a href="" class="btn btn-outline-success px-5">Read more</a>
                </div>
            </div>
        </div>
        @endforeach
        <hr/>

{{--        <div class="col-md-3 ">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc2.jpeg')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>FAysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}

{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc3.jpg')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc4.jpg')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3 pt-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc5.png')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3 pt-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc6.jpg')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3 pt-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc5.png')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-md-3 pt-3">--}}
{{--            <div class="card h-100">--}}
{{--                <img src="{{asset('/website/img/cc3.jpg')}}" alt="" class="card-image-top">--}}
{{--                <div class="card-body">--}}
{{--                    <h3>Android app development</h3>--}}
{{--                    <h5>Faysal</h5>--}}
{{--                    <p>Tk.1200</p>--}}
{{--                    <p>Stating Date-9/7/2022</p>--}}
{{--                    <hr/>--}}
{{--                    <a href="" class="btn btn-outline-success px-5">Read more</a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
    <a href="" class="btn btn-outline-danger mt-4  position-relative" style="left: 45%" >View All Course</a>
</div>
</section>

@endsection
