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
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>SL NO</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Mobile</th>
                                        <th>Address</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>asd</td>
                                        <td>asd</td>
                                        <td>asd</td>
                                        <td>asd</td>
                                        <td>asd</td>
                                        <td>
                                            <a href="" class="btn btn-success btn-sm">Edit</a>
                                            <a href="" class="btn btn-danger btn-sm">Delete</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





@endsection
