@extends('layouts.masterLayout')

@section('header','NEXUS AQUARIUM | EDIT FEEDBACK CATEGORY')

@section('css-body')
    {{ asset('css/home.css') }}
@stop

@section('content')
    <div class="container" style="margin-top: 100px">

        {{ Breadcrumbs::render('feedback_category-edit',$accounts->confirmation_code,$category) }}        

        <form method="post" action="{{ route('feedback_category-update', $accounts->confirmation_code) }}">
            <div class="form-group">
                @csrf

                @if (count ($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                
                <input type="hidden" name="id" value="{{ $category->id }}">
                <label for="name">Category Name</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ $category->name }}"> 
                <br>
                <button class="btn btn-warning">Edit</button>
            </div>
        </form>
    </div>
@stop
