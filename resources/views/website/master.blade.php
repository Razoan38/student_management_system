<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSMSB7 - @yield('title')</title>
      <link rel="stylesheet" href="{{asset('/website/css/bootstrap.css')}}" />
      <link rel="stylesheet" href="{{asset('/website/css/all.css')}}" />
      <link rel="stylesheet" href="{{asset('/website/css/style.css')}}" />
    <style><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        .my-caption
        {    
              top: 278px;
               left: 400px;
               right: 400px;
            
            background: rgba(0,0,0,0.5);
        }

    </style>
</head>
<body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <a href="" class="navbar-brand">SSMSB7</a>
            <ul class="navbar-nav">

                <li><a href="{{route('home')}}" class="nav-link">Home</a></li>
                <li><a href="{{route('about')}}" class="nav-link">About</a></li>
                <li><a href="{{route('courses')}}" class="nav-link">All Course</a></li>
                <li><a href="{{route('contact')}}" class="nav-link">Contact</a></li>

                @if(Session::get('student_id'))
                    <li class="dropdown">
                        <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">{{Session::get('student_name')}}</a>
                        <ul class="dropdown-menu">
                            <li><a href="{{route('student-dashboard')}}" class="dropdown-item">Dashboard</a></li>
                            <li><a href="{{route('student-logout')}}" class="dropdown-item">Logout</a></li>
                        </ul>
                    </li>
                @else
                    <a href="{{route('login-registration')}}" class="nav-link">Login/Registration</a>
                @endif
            </ul>
        </div>
    </nav>

    @yield('body')

    <footer >
        <section class="py-5 bg-secondary">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card card-body h-100">
                            <h1 class="text-center fw-bold">SSMS B7</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab beatae consecte</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-body h-100">
                            <h1 class="text-center fw-bold">Popular Link</h1>
                            <hr/>
                            <ul class="nav navbar-nav">
                                <li><a href="" class="nav-link">About Us</a></li>
                                <li><a href=""  class="nav-link">Our Course</a></li>
                                <li><a href=""  class="nav-link"> Our Instructor</a></li>
                                <li><a href=""  class="nav-link">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-body  h-100">
                            <h1 class="text-center fw-bold">Contact Us</h1>
                            <hr/>
                            <address>
                                House,100,rode-200,section-10.Mirpur Dhaka . <br/>
                                <b>phone</b> 01743069757 <br/>
                                <b>Email</b> admin@gmail.com
                            </address>


                            <ul class="nav">
                                <li><a class="nav-link"><i class="fa-brands fa-facebook"></i></a></li>
                                <li><a class="nav-link"><i class="fa-brands fa-instagram"></i></a></li>
                                <li><a class="nav-link"><i class="fa-brands fa-linkedin"></i></a></li>
                                <li><a class="nav-link"><i class="fa-brands fa-twitter"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-dark pt-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p class="text-center text-white">Copyright@basis seip Trance Design by Development by PHP LAravel</p>
                    </div>
                </div>

            </div>
        </section>
    </footer>

<script src="{{'/website/js/bootstrap.bundle.js'}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@if (Session::has('message'))
    <script>
        toastr.success("{{ Session::get('message') }}")
    </script>
    {{ Session::forget('message') }}
@endif
</body>
</html>
