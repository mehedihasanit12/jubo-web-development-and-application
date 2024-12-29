@extends('master')

@section('title')
    Home Page
@endsection

@section('body')
    <section class="py-5 bg-info-subtle">
        <div class="container">
            <div class="row">
                @foreach($blogs as $blog)
                <div class="col-md-4">
                    <div class="card">
                        <img src="{{asset($blog['image'])}}" alt=""/>
                        <div class="card-body">
                            <h1 class="card-title">{{$blog['title']}}</h1>
                            <p>
                                {{$blog['description']}}
                            </p>
                            <a href="{{route('detail', ['id' => $blog['id']])}}" class="btn btn-success">Read More</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
