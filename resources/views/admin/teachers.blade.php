@extends('layouts.app')

@section('information')
    @include('partials.information', ['title' => 'Administrar Profesores'])
@endsection

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Acciones</th>

                </tr>
                </thead>
                <tbody>

                @foreach($teachers as $teacher)

                    <tr>

                        <td> {{$teacher->id}}</td>
                        <td> {{$teacher->name}}</td>
                        <td> {{$teacher->email}}</td>


                        <td width="10px">
                            <form action="{{route('admin.destroy_teacher',   $teacher->id)}} " method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger text-white">
                                    <i class="fa fa-trash"></i> {{ __("Eliminar") }}
                                </button>
                            </form>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>


        </div>
        <div class="row justify-content-center">
            {{ $teachers->links() }}
        </div>
    </div>


@endsection
