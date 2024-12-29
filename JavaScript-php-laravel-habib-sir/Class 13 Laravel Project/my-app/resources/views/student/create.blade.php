@extends('master')

@section('title')
    Add Student Page
@endsection

@section('body')

    <section class="py-5 bg-primary-subtle">
        <div class="container">
            <div class="row">
                <div class="col-md-9 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            Add Student Form
                        </div>
                        <div class="card-body">
                            <form action="{{route('student.store')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">Student Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="name"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Student Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Student Mobile</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="mobile"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Student Image</label>
                                    <div class="col-md-9">
                                        <input type="file" class="form-control" name="image"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3">Student Address</label>
                                    <div class="col-md-9">
                                        <textarea class="form-control" name="address"></textarea>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" value="Create New Student"/>
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
