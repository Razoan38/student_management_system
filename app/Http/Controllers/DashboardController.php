<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Enroll;

class DashboardController extends Controller
{
    private $enrolls;
    public function index()
    {
        return view('admin.home.index');
    }

//    public function manageEnroll()
//    {
//        $this->enrolls=Enroll::all();
//        return view('admin.manage.enroll');
//    }

}
