@extends('master')

@section('title')
    Detail Page
@endsection

@section('body')

    <section class="py-5 bg-danger-subtle">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-body">
                        <img src="{{asset($blog['image'])}}">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card card-body">
                        <h1>{{$blog['title']}}</h1>
                        <p>
                            {{$blog['description']}}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
