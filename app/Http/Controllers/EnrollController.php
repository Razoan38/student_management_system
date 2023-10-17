<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Enroll;
use App\Models\Students;
use Illuminate\Http\Request;
use Session;
use function Spatie\Ignition\register;

class EnrollController extends Controller
{
    private $course,$student,$enroll;
    public function index($id)
    {
        $this->course = Course::find($id);
        if (Session::get('student_id'))
        {
            $this->student =Students::find(Session::get('student_id'));
        }
        return view('website.enroll.index',[
            'course' => $this->course,
            'student' => $this->student,
        ]);
    }

    public function enroll(Request $request,$id)
    {


        if (Session::get('student_id'))
        {
            $this->student =Students::find(Session::get('student_id'));
        }
        else
        {
            $this->validate($request, [
                'name'   => 'required',
                'email'  => 'required|unique:students,email',
                'mobile' => 'required',

            ],[
                'email.required' =>'vai.... ei email address ti  dan',
                'email.unique' =>'vai.... ei email address ti already asa. Notun akta email dan',
            ]);

            $this->student =Students::newStudent($request);
        }


        //singup
        Session::put('student_id', $this->student->id);
        Session::put('student_name', $this->student->name);

        $this->enroll = Enroll::where('student_id', Session::get('student_id'))->where('course_id', $id)->first();
        if ($this->enroll)
        {
            return redirect('/All-course')->with('message' , 'your are already enroll this course');
        }
        else
            {
                Enroll::newEnroll($request,$this->student->id, $id);
            }

        return redirect('/enroll-now/'.$id)->with('message', 'Your Enroll done');


       // return $request->all();
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
