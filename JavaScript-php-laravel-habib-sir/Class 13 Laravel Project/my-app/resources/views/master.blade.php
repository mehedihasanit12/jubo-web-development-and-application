<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('/') }}css/bootstrap.css">
    <link rel="stylesheet" href="{{ asset('/') }}css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">

        <a href="{{ url('/')}}" class="navbar-brand">My APP</a>

        <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a href="{{ route('home')}}" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="{{ route('about') }}" class="nav-link">About</a></li>
            <li class="nav-item"><a href="{{ route('portfolio')}}" class="nav-link">Portfolio</a></li>
            <li class="nav-item"><a href="{{ route('gallery') }}" class="nav-link">Gallery</a></li>
            <li class="nav-item"><a href="{{ route('contact')}}" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="{{ route('student.create')}}" class="nav-link">Add Student</a></li>
            <li class="nav-item"><a href="{{ route('student.index')}}" class="nav-link">Manage Student</a></li>
        </ul>
    </div>
</nav>


@yield('body')



<script src="{{ asset('/') }}js/bootstrap.bundle.js"></script>
</body>
</html>

