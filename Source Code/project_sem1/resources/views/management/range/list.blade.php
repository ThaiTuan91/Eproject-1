@extends('layouts.masterLayout')


@section('header','Ranges')

@section('css-body')
    {{ asset('css/admin/admin.css') }}
@stop

@section('content')
    <div class="container">

        <div class="body container">

            {{ Breadcrumbs::render('admin_range_list',$accounts->confirmation_code) }}        

            <div style="display: flex; flex-direction: row-reverse; align-items: center; width: 100%; height: 100px;">
                <form method="post" action="{{ route('admin_range_search',['confirmation_code'=>$accounts->confirmation_code]) }}" style="position: relative; display: flex; justify-content: flex-end; align-items: center; width: 75%;">
                    <br>
                    @csrf
                    <input type="search" name="search" placeholder="Search..." class="form-control" style="padding-right: 40px; width: 300px;"
                        @if (isset($search))
                            value="{{ $search }}"
                        @endif
                    >
                    <button type="submit" style="position: absolute; top: 0px; right: 10px; height: 100%; background-color: transparent; border: none;"><img src="{{ asset('storage/images/home/search_icon.jpeg') }}" alt="" width="16" height="16"></button><br><br>
                </form>
                <span style="font-weight: bold; margin-left: 10px; margin-right:auto;"><i class="fas fa-flag"></i> Result({{ $count }})</span>
                <a href="{{ Route('admin_range_add',['confirmation_code'=>$accounts->confirmation_code]) }}" style="position: relative; width: auto; margin-right: auto;"><button class="btn btn-success">Add Range</button></a>
            </div>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th><center>STT</center></th>
                        <th><center>Range</center></th>
                        <th colspan="2"><center>Action</center></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($rangeList as $range)
                        <tr>
                            <td><center>{{ ++$index }}</center></td>
                            <td>{{ $range->name }}</td>
                            <td><center><a href="{{ Route('admin_range_edit',['confirmation_code'=>$accounts->confirmation_code,'id_range'=>$range->id]) }}"><button class="btn btn-warning">Edit</button></a></center></td>
                            <td><center><a href="{{ Route('admin_range_delete',['confirmation_code'=>$accounts->confirmation_code,'id_range'=>$range->id]) }}"><button class="btn btn-danger">Delete</button></a></center></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </div>

    </div>
@stop

