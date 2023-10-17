@extends('admin.master')

@section('body')

    <div class="row">

        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Add Course Offer Form</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <form action="{{route('admin.create-course-offer')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Name</label>
                            <div class="col-sm-9">
                                <select name="course_id" id="" class="form-control">
                                    <option value="disabled selected">-- Select Your Course--</option>
                                    @foreach($courses as $course)
                                        <option value="{{$course->id}}">{{$course->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Banner Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control-file" name="image">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Offer Price</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="offer_fee">
                            </div>
                        </div>


                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New Course Offer</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Course Offer Info</h4>
                    <p class="card-title-desc">DataTables has most features enabled by
                        default, so all you need to do to use it with your own tables is to call
                        the construction function: <code>$().DataTable();</code>.
                    </p>

                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>

                            <th>Sl No</th>
                            <th>Course Title</th>
                            <th>Course Fee</th>
                            <th>Starting Date</th>
                            <th>Offer Fee</th>
                            <th>Action</th>
                        </tr>
                        </thead>


                        <tbody>
                        @foreach($offerCourses as $course)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$course->title}}</td>
{{--                                <td>{{$course->teacher->name.'('.$course->teacher->number.')'}}</td>--}}
                                <td>{{$course->fee}}</td>
                                <td>{{$course->starting_date}}</td>
                                <td>{{$course->offer_fee}}</td>


                                {{--                       <td>{{$course->duration}}</td>--}}
                                {{--                       <td><img src="{{asset($course->image)}}" alt="" height="100" width="100" ></td>--}}
                                {{--                            description--}}
                                {{--                       <td>{{$course->description}}</td>--}}

                                <td>
                                    <a href="{{route('admin.course.offer-edit',['id'=> $course->id])}}"class="btn btn-primary btn-sm" title="View Course Detail">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                </td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->

@endsection

