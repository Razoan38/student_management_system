@extends('admin.master')

@section('body')

    <div class="row">
        <div class="container">
            <div class="col h-100">
                <div class="card card-body">
                    <table class="table table-hover table-bordered">

                        <tr>
                            <th>Id</th>
                            <td>{{$course->id}}</td>
                        </tr>

                        <tr>
                            <th>Course Title</th>
                            <td>{{$course->title}}</td>
                        </tr>

                        <tr>
                            <th>Course Fee</th>
                            <td>{{$course->fee}}</td>
                        </tr>

                        <tr>
                            <th>Starting Date</th>
                            <td>{{$course->starting_date}}</td>
                        </tr>

                        <tr>
                            <th>Course Duration</th>
                            <td>{{$course->duration}}</td>
                        </tr>

                        <tr>
                            <th>Course Image</th>

                            <td><img src="{{asset($course->image)}}" height="100" width="100"  /></td>
                        </tr>

                        <tr>
                            <th>description</th>
                            <td>{!!$course->description !!}</td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>




@endsection
