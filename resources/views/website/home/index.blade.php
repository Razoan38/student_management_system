@extends('website.master')

@section('title')
    Simple Student Management System:
@endsection


@section('body')
   <div id="slider" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1800">
       <ol class="carousel-indicators">
           @foreach($offer_courses as $key => $offer_course)
           <li data-bs-target="#slider" data-bs-slide-to="{{$key}}" class="{{$key == 0 ? 'active' : ''}}"></li>
{{--           <li data-bs-target="#slider" data-bs-slide-to="1" class=""></li>--}}
{{--           <li data-bs-target="#slider" data-bs-slide-to="2" class=""></li>--}}
           @endforeach
       </ol>

       <div class="carousel-inner">
           @foreach($offer_courses as  $key1 =>$offer_course)
           <div class="carousel-item {{$key1 == 0 ? 'active' : ''}}">
               <img src="{{asset($offer_course->banner_image)}}" class="w-100"  alt="" style="height: 550px"  >
               <div class="carousel-caption my-caption">
                   <h1 class="text-warning">{{$offer_course->title}}</h1>
                   <P class="text-warning text-decoration-line-through">Course Fee{{$offer_course->fee}}</P>
                   <P class="text-warning ">Course Offer Fee{{$offer_course->offer_fee}}</P>

                   <a href="{{route('courseDetails', ['id' =>$offer_course->id])}}" class="btn btn-success px-5">Red more</a>
               </div>
           </div>
           @endforeach

{{--           <div class="carousel-item ">--}}
{{--               <img src="{{asset('/website/img/slide2.jpg')}}" class="w-100"  alt="" style="height: 550px" >--}}
{{--               <div class="carousel-caption">--}}
{{--                   <h1 class="text-warning">Web Digine</h1>--}}
{{--                   <P class="text-warning">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus ad aliquid consequatur consequuntur</P>--}}
{{--                   <a href="" class="btn btn-success px-5">REd</a>--}}
{{--               </div>--}}
{{--           </div>--}}
{{--           <div class="carousel-item ">--}}
{{--               <img src="{{asset('/website/img/Banner18.jpg')}}" class="w-100"  alt="" style="height: 550px" >--}}
{{--               <div class="carousel-caption">--}}
{{--                   <h1 class="text-warning">Web Digine</h1>--}}
{{--                   <P class="text-warning">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus ad aliquid consequatur consequuntur</P>--}}
{{--                   <a href="" class="btn btn-success px-5">REd more</a>--}}
{{--               </div>--}}
{{--           </div>--}}

       </div>
   </div>

    <section class="">
        <div class="container-fluid py-5 bg-secondary">
            <div class="row">
                <div class="col">
                    <h1 class="text-center text-white">Our Popular Course</h1>
                </div>
               </div>
           </div>

            <div class="container py-5">
                <div class="row ">
                    <div class="col-md-4 mb-3 h-100">
                        <div class="card ">
                            <img src="{{asset('/website/img/cc6.jpg')}}" alt="" class="card-image-top"  style="height: 350px">
                            <div class="card-body">
                                <h3>Web Design</h3>
                                <h5>Razoan</h5>
                                <p>Tk.1200</p>
                                <p>Stating Date-9/7/2022</p>
                                <hr/>
                                <a href="" class="btn btn-outline-success px-5">REd more</a>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card ">
                            <img src="{{asset('/website/img/cc4.jpg')}}" alt="" class="card-image-top"  style="height: 350px">
                            <div class="card-body">
                                <h3>Web Design</h3>
                                <h5>Razoan</h5>
                                <p>Tk.1200</p>
                                <p>Stating Date-9/7/2022</p>
                                <hr/>
                                <a href="" class="btn btn-outline-success px-5">REd more</a>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card ">
                            <img src="{{asset('/website/img/cc2.jpeg')}}" alt="" class="card-image-top" style="height: 350px">
                            <div class="card-body">
                                <h3>Web Design</h3>
                                <h5>Razoan</h5>
                                <p>Tk.1200</p>
                                <p>Stating Date-9/7/2022</p>
                                <hr/>
                                <a href="" class="btn btn-outline-success px-5">REd more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    <section>
        <div class="container-fluid py-5 bg-secondary">
            <div class="row">
                <div class="col">
                    <h1 class="text-center text-white">Recent Course</h1>
                </div>
            </div>
        </div>

        <div class="container py-5">
            <div class="row">
                @foreach($courses as $course)
                <div class="col-md-4">
                    <div class="card h-100">
                        <img src="{{asset($course->image)}}" alt="" class="card-image-top" style="height: 300px">
                        <div class="card-body">
                            <h3>{{$course->title}}</h3>
                            <h5>{{$course->teacher->name}}</h5>
                            <p>{{$course->fee}}</p>
                            <p>Stating Date : {{$course->starting_date}}</p>
                            <hr/>
                            <a href="{{route('courseDetails', ['id' =>$course->id])}}" class="btn btn-outline-success px-5">Read more</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>



@endsection
