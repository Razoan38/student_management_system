@extends('teacher.master')



@section('body')
    <div class="row">
     <div class="col-12">
        <div class="card">
            <div class="card-body">

                <h4 class="card-title">All Course Info</h4>
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
                        <th>Status</th>
{{--                        <th>Course Duration</th>--}}
{{--                        <th>Course  Image</th>--}}
{{--                        <th>Course  Description</th>--}}
                        <th>Action</th>
                    </tr>
                    </thead>


                    <tbody>
                    @foreach($courses as $course)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$course->title}}</td>
                            <td>{{$course->fee}}</td>
                            <td>{{$course->starting_date}}</td>
                            <td>{{$course->status == 1 ? 'Published' : 'Unpublished'}}</td>

{{--                       <td>{{$course->duration}}</td>--}}
{{--                       <td><img src="{{asset($course->image)}}" alt="" height="100" width="100" ></td>--}}
{{--                            description--}}
{{--                       <td>{{$course->description}}</td>--}}

                            <td>
                                <a href="{{route('course.detail',['id'=> $course->id])}}"class="btn btn-primary btn-sm" title="View Course Detail">
                                    <i class="fa fa-book-open"></i>

                                </a>

                                <a href="{{route('course.edit',['id'=> $course->id])}}"class="btn btn-success btn-sm" title="Edit Course">
                                    <i class="fa fa-edit"></i>

                                </a>


                                <a href="{{route('course.delete',['id'=> $course->id])}}"class="btn btn-danger btn-sm" title="Delete Course" onclick="return confirm('Are you sure delete')">
                                    <i class="fa fa-trash"></i>

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
