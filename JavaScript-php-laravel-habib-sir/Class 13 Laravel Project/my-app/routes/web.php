<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\StudentController;

Route::get('/', [WelcomeController::class, 'index'])->name('home');

Route::get('/about',[WelcomeController::class, 'about'])->name('about');

Route::get('/contact-us',[WelcomeController::class, 'contact'])->name('contact');

Route::get('/my-portfolio',[WelcomeController::class, 'portfolio'])->name('portfolio');

Route::get('/gallery',[WelcomeController::class, 'gallery'])->name('gallery');

Route::get('/detail/{id}',[WelcomeController::class, 'detail'])->name('detail');

//About Page Calculator,Full Name Form Submit

Route::post('/make-full-name',[WelcomeController::class, 'makeFullName'])->name('make-full-name');

Route::post('/my-calculator',[WelcomeController::class, 'myCalculator'])->name('my-calculator');

//student.index, student.create

Route::get('/student', [StudentController::class, 'index'])->name('student.index');

Route::get('/student/create', [StudentController::class, 'create'])->name('student.create');

Route::post('/student/store', [StudentController::class, 'store'])->name('student.store');
