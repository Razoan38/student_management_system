<?php

namespace App\Http\Controllers;

use App\Models\Enroll;
use Illuminate\Http\Request; 
use App\Models\Students;

use Illuminate\Support\Facades\Session;
use Symfony\Component\HttpFoundation\Session\Session as SessionSession;

class StudentDashboardController extends Controller
{
    private $enrolls, $student;
    public function index()
    {
        return view('student.home.index');
    }
    public function profile()
    {
       $this->student = Students::find(Session::get('student_id'));
        return view('student.profile.index' ,['student' => $this->student]);
    }

    public function update(Request $request ,$id)
     {
       Students::updateStudent( $request, $id);
       return back()->with('message', 'student profite Successfully');
     }
    public function course()
    {
        $this->enrolls=Enroll::where('student_id',Session::get('student_id'))->get();
        return view('student.course.index',['enrolls' =>$this->enrolls]);
    }
}
