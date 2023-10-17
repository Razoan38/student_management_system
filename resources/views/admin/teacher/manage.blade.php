@extends('admin.master')

@section('body')
   <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">

                <h4 class="card-title">Default Datatable</h4>
                <p class="card-title-desc">DataTables has most features enabled by
                    default, so all you need to do to use it with your own tables is to call
                    the construction function: <code>$().DataTable();</code>.
                </p>

                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                    <thead>
                    <tr>

                        <th>Sl No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>
                    </thead>


                    <tbody>
                    @foreach($teachers as $teacher)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$teacher->name}}</td>
                        <td>{{$teacher->email}}</td>
                        <td>{{$teacher->number}}</td>
                        <td><img src="{{asset($teacher->image)}}" alt="" height="100" width="100" ></td>
                        <td>
                            <a href="{{route('teacher.edit',['id'=> $teacher->id])}}"class="btn btn-success btn-sm">
                                <i class="fa fa-edit"></i>

                            </a>
                            <a href="{{route('teacher.delete',['id'=> $teacher->id])}}"class="btn btn-danger btn-sm" onclick="return confirm('Are you sure delete')">
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
    <


@endsection
