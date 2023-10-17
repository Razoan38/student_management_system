@extends('admin.master')

@section('body')

    <div class="row">

        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Edit Course Offer Form</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <form action="{{route('admin.update-course-offer')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Course Name</label>
                            <div class="col-sm-9">
                                <select name="course_id" id="" class="form-control">
                                    <option value="disabled selected">-- Select Your Course--</option>
                                    @foreach($courses as $course)
                                        <option value="{{$course->id}}" {{$course->id ==$singleCourse->id ? 'selected' : ''}}>{{$course->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Banner Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control-file" name="image">
                                <img src="{{asset($singleCourse->banner_image)}}" style="height: 100px">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Offer Price</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" value="{{$singleCourse->offer_fee}}" name="offer_fee">
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




@endsection

