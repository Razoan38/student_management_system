<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;

//use MongoDB\Driver\Session;
use Session;

class TeacherAutController extends Controller
{
    private $teacher;
    public function login()
    {
        return view('teacher.auth.login');
    }


    public function loginCheck(Request $request)
    {
//        return $request;
//        exit();

        $this->validate($request,[
           'email'=>'required|email',
            'password'=>'required|min:6',
        ]);


       $this->teacher = Teacher::where('email',$request->email)->first();
        if ($this->teacher)
        {
            if (password_verify($request->password,$this->teacher->password))
            {
                Session::put('teacher_id',$this->teacher->id);
                Session::put('teacher_name',$this->teacher->name);

                return redirect('/teacher/dashboard');
               // return'Success';
            }
            else
            {
                return redirect('teacher/login')->with('message','Wrong password');

               // return 'Wrong password';
            }
        }
        else
        {
            return redirect('teacher/login')->with('message','Wrong Email');
           // return 'Wrong Email';
        }
    }

    public function logout()
    {
        Session::forget('teacher_id');
        Session::forget('teacher_name');
        return redirect('teacher/login');
    }

}


