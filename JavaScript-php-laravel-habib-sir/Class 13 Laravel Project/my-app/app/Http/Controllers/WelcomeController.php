<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;

class WelcomeController extends Controller
{
    public $blogs, $blog, $result;

    public function index()
    {
        $this->blogs = Blog::getAllBlog();
        return view('home', ['blogs' => $this->blogs]);
    }

    public function about()
    {
        return view('about');
    }

    public function contact()
    {
        return view('contact');
    }

    public function portfolio()
    {
        return view('portfolio');
    }

    public function gallery()
    {
        return view('gallery');
    }

    public function detail($id)
    {
        $this->blog = Blog::getBlogById($id);
        return view('detail', ['blog' => $this->blog]);
    }

    public function makeFullName(Request $request)
    {
        $this->result = $request->first_name.' '.$request->last_name;
        return back()->with('result', $this->result);
    }

    public function myCalculator(Request $request)
    {
        $this->firstNumber = $request->first_number;
        $this->secondNumber = $request->second_number;

        switch ($request->choice)
        {
            case '+':
                $this->result = $this->addition($request);
                break;
            case '-':
                $this->result = $this->subtraction($request);
                break;
            case '*':
                $this->result = $this->multiplication($request);
                break;
            case '/':
                $this->result = $this->division($request);
                break;
            case '%':
                $this->result = $this->remainder($request);
                break;
        }

        return back()->with('calculator-result', $this->result);

    }

    public function addition($request)
    {
        $this->result = $request->first_number + $request->second_number;
        return $this->result;
    }

    public function subtraction($request)
    {
        $this->result = $request->first_number - $request->second_number;
        return $this->result;
    }

    public function multiplication($request)
    {
        $this->result = $request->first_number * $request->second_number;
        return $this->result;
    }

    public function division($request)
    {
        $this->result = $request->first_number / $request->second_number;
        return $this->result;
    }

    public function remainder($request)
    {
        $this->result = $request->first_number % $request->second_number;
        return $this->result;
    }


}
