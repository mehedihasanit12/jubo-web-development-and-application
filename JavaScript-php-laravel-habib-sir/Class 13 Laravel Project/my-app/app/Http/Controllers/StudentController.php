<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public $student;

    public function index()
    {
        return view('student.index');
    }

    public function create()
    {
        return view('student.create');
    }

    public function store(Request $request)
    {
        $this->student = new Student();
        $this->student->name = $request->name;
        $this->student->email = $request->email;
        $this->student->mobile = $request->mobile;
        $this->student->image = $request->image;
        $this->student->address = $request->address;
        $this->student->save();

        return 'success';
    }
}
