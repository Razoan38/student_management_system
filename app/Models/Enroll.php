<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Enroll extends Model
{
    use HasFactory;

    private static $enroll;

    public static function newEnroll($request,$student_id,$course_id)
{
    self::$enroll = new Enroll();
    self::$enroll->student_id          =$student_id;
    self::$enroll->course_id           =$course_id;
    self::$enroll->enroll_data         =date('Y-m-d');
    self::$enroll->enroll_timestamp    = strtotime(date('Y-m-d'));
    self::$enroll->payment_type        = $request->payment_type;
    self::$enroll->save();
}

}
