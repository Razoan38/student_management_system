<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;
use function Symfony\Component\Mime\Header\all;

class TeacherController extends Controller
{

    private $teachers,$teacher;
    public function index()
    {
        return view('admin.teacher.index');
    }


    public function create(Request $request)
    {
        Teacher::newTeacher($request);
        return redirect('teacher/add')->with('massage','Teacher info SAve');
    }




    public function manage()
    {
        $this->teachers=Teacher::all();
        return view('admin.teacher.manage',['teachers' =>$this->teachers]);
    }

    public function edit($id)
    {
        $this->teacher = Teacher::find($id);
        return view('admin.teacher.edit', ['teacher' => $this->teacher]);
    }
    public function update(Request $request,$id)
    {
        Teacher::updateTeacher($request,$id);
        return redirect('/teacher/manage')->with('massage', 'Blog info Update Success');
    }


        public function delete($id)
    {
        Teacher::deleteTeacher($id);
        return redirect('/teacher/manage')->with('massage', ' Teacher Info Delete Success');
    }

}
