<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\TeacherAutController;
use App\Http\Controllers\TeacherDashboardController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\AdminCourseController;
use App\Http\Controllers\EnrollController;
use App\Http\Controllers\StudentDashboardController;
use App\Http\Controllers\StudentAuthController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});


Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('/about-us',[HomeController::class,'about'])->name('about');
Route::get('/All-course',[HomeController::class,'courses'])->name('courses');
Route::get('/coursedetails/{id}',[HomeController::class,'courseDetails'])->name('courseDetails');

Route::get('/contact-us',[HomeController::class,'contact'])->name('contact');
Route::get('/login-registration',[HomeController::class,'auth'])->name('login-registration');

//Enroll section .
Route::get('/enroll-now/{id}',[EnrollController::class,'index'])->name('enroll-now');
Route::post('/enroll-new/{id}',[EnrollController::class,'enroll'])->name('enroll.new');

//teacherAuthController

Route::get('/teacher/login',[TeacherAutController::class,'login'])->name('teacher.login');

Route::post('/teacher/login',[TeacherAutController::class,'loginCheck'])->name('teacher.login');
Route::post('/teacher/logout',[TeacherAutController::class,'logout'])->name('teacher.logout');

//TeacherDashboardController

Route::get('/teacher/dashboard',[TeacherDashboardController::class,'index'])->name('teacher.dashboard');


//Course Controller

Route::get('/course/add',[CourseController::class,'index'])->name('course.add');
Route::post('/course/create',[CourseController::class,'create'])->name('course.create');
Route::get('/course/manage', [CourseController::class,'manage'])->name('course.manage');

//course Edit
Route::get('/course/detail/{id}',[CourseController::class,'detail'])->name('course.detail');
Route::get('/course/edit/{id}',[CourseController::class,'edit'])->name('course.edit');
Route::post('/course/update/{id}',[CourseController::class,'update'])->name('course.update');
Route::get('/course/delete/{id}',[CourseController::class,'delete'])->name('course.delete');

//student-logout
//student-dashboard
Route::get('/student/dashboard',[StudentDashboardController::class,'index'])->name('student-dashboard');
Route::get('/student/course',[StudentDashboardController::class,'course'])->name('student-course');
Route::get('/student/profile',[StudentDashboardController::class,'profile'])->name('student-profile');
Route::post('/student/update/{id}',[StudentDashboardController::class,'update'])->name('update-student');


Route::get('/student/logout',[StudentAuthController::class,'logout'])->name('student-logout');
Route::post('/student/login',[StudentAuthController::class,'login'])->name('student-login');



Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function ()
{

    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
    //manageEnroll
    //Route::get('/dashboard',[DashboardController::class,'manageEnroll'])->name('admin.manage.enroll');

    Route::get('/teacher/add',[TeacherController::class,'index'])->name('teacher.add');
    Route::post('/teacher/new',[TeacherController::class,'create'])->name('teacher.new');
    Route::get('/teacher/manage',[TeacherController::class,'manage'])->name('teacher.manage');


    //edit
    Route::get('/teacher/edit/{id}',[TeacherController::class,'edit'])->name('teacher.edit');
    Route::post('/teacher/update/{id}',[TeacherController::class,'update'])->name('teacher.update');
    Route::get('/teacher/delete/{id}',[TeacherController::class,'delete'])->name('teacher.delete');

  //  admin.manage-course
    Route::get('/admin/manage-course',[AdminCourseController::class,'manageCourse'])->name('admin.manage-course');
    Route::get('/admin/course-detail/{id}',[AdminCourseController::class,'CourseDetail'])->name('admin.course-detail');
    Route::get('/admin/update-course-status/{id}',[AdminCourseController::class,'updateStatus'])->name('admin.update-course-status');

    Route::get('/admin/course/manage-offer',[AdminCourseController::class,'manageOffer'])->name('admin.course.manage-offer');

    Route::post('/admin/create/manage-offer',[AdminCourseController::class,'createOffer'])->name('admin.create-course-offer');
    Route::get('/admin/course/offer-edit/{id}',[AdminCourseController::class,'editOffer'])->name('admin.course.offer-edit');
    Route::post('/admin/update-course-offer',[AdminCourseController::class,'updateOffer'])->name('admin.update-course-offer');
    Route::post('/admin/update-course-offer',[AdminCourseController::class,'updateOffer'])->name('admin.update-course-offer');

    Route::get( '/admin/update-course-offer',[AdminEnrollController::class,'updateOffer'])->name('admin.update-course-offer');
});


// video number-51 taika suro korbo 