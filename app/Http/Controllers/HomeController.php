<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Enroll;
use Illuminate\Http\Request;
use Session;

class HomeController extends Controller
{
    private $courses,$offerCourses,$course,$allCourses,$enroll,$status;
    public function index()
    {
//        $this->courses = Course::where('status',1)->orderBy('id','desc')->take(3)->get();
//        $this->offerCourses = Course::where('offer_fee', '>', 0)-orderBy('id','desc')->get();

        return view('website.home.index',[
            'courses'        => Course::where('status',1)->orderBy('id','desc')->take(3)->get(),
            'offer_courses' => Course::where('offer_fee', '>', 0)->orderBy('id','desc')->get(),
        ]);
    }

    public function about()
    {
        return view('website.about.index');
    }
    public function courseDetails($id)
    {
        $this->course = Course::find($id);
        if ( Session::get('student_id'))
        {
          $this->enroll = Enroll::where('student_id', Session::get('student_id'))->where('course_id', $id)->first();
          if ($this->enroll)
          {
              $this->status= true;
          }
          else
          {
              $this->status =false;
          }
        }
        else
            {
                $this->status =false;
            }
        return view('website.courses.details',[
            'course' => $this->course,
            'status' => $this->status
        ]);
    }

    public function courses()
    {
      $this->allCourses =  Course::where('status',1)->orderBy('id','desc')->get();
        return view('website.courses.index',['allCourses' => $this->allCourses]);
    }


    public function contact()
    {
        return view('website.contact.index');
    }

    public function auth()
    {
        return view('website.auth.index');
    }
}
