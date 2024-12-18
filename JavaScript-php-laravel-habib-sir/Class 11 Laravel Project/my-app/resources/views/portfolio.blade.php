<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('/') }}css/bootstrap.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">

        <a href="{{ url('/')}}" class="navbar-brand">My APP</a>

        <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a href="{{ url('/')}}" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="{{ url('/about') }}" class="nav-link">About</a></li>
            <li class="nav-item"><a href="{{ url('/my-portfolio')}}" class="nav-link">Portfolio</a></li>
            <li class="nav-item"><a href="{{ url('/gallery') }}" class="nav-link">Gallery</a></li>
            <li class="nav-item"><a href="{{ url('/contact-us')}}" class="nav-link">Contact</a></li>
        </ul>
    </div>
</nav>

<section class="py-5 bg-primary-subtle">
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>This is Portfolio page</h1>
            </div>
        </div>
    </div>
</section>

<script src="{{ asset('/') }}js/bootstrap.bundle.js"></script>
</body>
</html>
