@extends('website.master')

@section('title')
    Student Dashboard
@endsection

@section('body')
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card card-body">
                    <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>Sl NO</th>
                        <th> Course Title</th>
                        <th> Stating Date</th>
                        <th>Status</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($enrolls as $enroll)
                        <tr>
{{--                            <td>1</td>--}}
{{--                            <td>{{$enroll->course->title}}</td>--}}
{{--                            <td>{{$enroll->course->stating_date}}</td>--}}
{{--                            <td>{{$enroll->status}}</td>--}}
                        </tr>
                    @endforeach
                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</section>
@endsection
