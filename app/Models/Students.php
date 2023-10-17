<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Students extends Model
{
    use HasFactory;

    private static $student, $image,$directory,$imageUrl,$imageName,$course,$extension,$message;


    public static function newStudent($request)
    {
        self::$student = new Students();
        self::$student->name = $request->name;
        self::$student->email = $request->email;
        self::$student->password =bcrypt( $request->mobile);
        self::$student->mobile =$request->mobile;
        self::$student->save();
        return self::$student;
    }
    public static function updateStudent($request, $id)
{
    self::$student = Students::find($id);

    if ($request->file('image')) {
        if (file_exists(self::$student->image)) {
            unlink(self::$student->image);
        }

        self::$image = $request->file('image');
        self::$imageName = 'ssmsb7_' . time() . '.' . self::$image->extension();
        self::$directory = 'upload/student-image/';

        // Ensure the directory exists or create it if necessary
        if (!file_exists(self::$directory)) {
            mkdir(self::$directory, 0755, true);
        }

        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl = self::$directory . self::$imageName;
    } else {
        self::$imageUrl = self::$student->image;
    }

    self::$student->name = $request->name;
    self::$student->email = $request->email;
    self::$student->mobile = $request->mobile;
    self::$student->address = $request->address;
    self::$student->image = self::$imageUrl;
    self::$student->save();

    // Return the updated student object if needed
    // return self::$student;
}

} 
