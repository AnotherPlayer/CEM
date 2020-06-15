@extends('layouts.app')

@section('information')
    @include('partials.information', ['title' => 'Administrar Categorías De Los Cursos'])
@endsection

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <a href="{{ route('admin.create') }}"
               class="btn btn-sm btn-primary btn-lg btn-block active">
                <h5>Registrar Una Nueva Categoría</h5>
            </a>

            <table class="table table-striped table-hover">

                <thead>
                <tr>


                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Acciones</th>

                </tr>
                </thead>
                <tbody>

                @foreach($categorias as $categoria)

                    <tr>


                        <td> {{$categoria->name}}</td>
                        <td> {{$categoria->description}}</td>



                            <td width="10px">
                                <a href="{{ route('admin.edit', $categoria->id) }}"
                                   class="btn btn-sm btn-primary">
                                    Editar
                                </a>
                            </td>


                            <td width="10px">
                                {!! Form::open(['route' => ['admin.destroy', $categoria->id],
                                'method' => 'DELETE']) !!}
                                <button class="btn btn-sm btn-danger">
                                    Eliminar
                                </button>
                                {!! Form::close() !!}
                            </td>


                    </tr>
                @endforeach
                </tbody>
            </table>


        </div>
        <div class="row justify-content-center">
            {{ $categorias->links() }}
        </div>
    </div>


@endsection
