<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;
use Session;

class CourseController extends Controller
{
    private $courses, $course;
   public function index()
   {
          return view('teacher.course.index');
   }

   public function create(Request $request)
   {
       Course::newCourse($request);
       return redirect('/course/add')->with('massage', 'Course  info SAve');
   }

    public function manage()
    {
        $this->courses=Course::where('teacher_id',Session::get('teacher_id'))->get();
        return view('teacher.course.manage',['courses' =>$this->courses]);
    }

    //course detail
    public function detail($id)
    {
        $this->course =Course::find($id);
        return view('teacher.course.detail',['course' =>$this->course]);
    }

    public function edit(Request $request,$id)
    {
        return view('teacher.course.edit');
    }

    public function update (Request $request,$id)
    {
        return $request->all();
    }

    public function delete ($id)
    {
        return $id;
    }


}
