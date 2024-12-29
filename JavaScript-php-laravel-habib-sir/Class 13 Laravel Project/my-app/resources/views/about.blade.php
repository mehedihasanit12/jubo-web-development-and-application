@extends('master')

@section('title')
    About Page
@endsection

@section('body')

    <section class="py-5 bg-primary-subtle">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            Full Name Program
                        </div>
                        <div class="card-body">
                            <form action="{{route('make-full-name')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="first_name">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="last_name">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Result</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" value="{{session('result')}}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" value="Make Full Name">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-custom text-white">
                           My Calculator Program
                        </div>
                        <div class="card-body">
                            <form action="{{route('my-calculator')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">First Number</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="first_number">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Second Number</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="second_number">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Your Choice</label>
                                    <div class="col-md-9">
                                        <label><input type="radio" name="choice" value="+" > +</label>
                                        <label><input type="radio" name="choice" value="-" > -</label>
                                        <label><input type="radio" name="choice" value="*" > *</label>
                                        <label><input type="radio" name="choice" value="/" > /</label>
                                        <label><input type="radio" name="choice" value="%" > %</label>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Result</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" value="{{session('calculator-result')}}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" value="Make Result">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
