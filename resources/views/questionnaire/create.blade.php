@extends('layouts.app')

@section('information')
    @include('partials.information',[
        "title" => __("Plataforma de Asesorías de Matemáticas CEM"),

    ])
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                {{__("Creación de un nuevo cuestionario")}}
            </div>
            <div class="card-body">
                <form action="/questionnaires" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="title">Título del Cuestionario</label>
                        <input name="title" type="text" class="form-control" id="title" aria-describedby="titleHelp" placeholder="Titulo" required>
                        <small id="titleHelp" class="form-text text-muted">Ingrese el nombre al cuestionario (generalmente el nombre de la materia)</small>
                        @error('title')
                            <small class="text-danger">{{ $message}}</small>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="purpose">Propósito del Cuestionario</label>
                        <input name="purpose" type="text" class="form-control" id="purpose" aria-describedby="purposeHelp" placeholder="Descripción">
                        <small id="purposeHelp" class="form-text text-muted">Da una breve descripción de que evaluará este cuestionario</small>
                        @error('purpose')
                            <small class="text-danger">{{ $message}}</small>
                        @enderror
                    </div>
                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-primary">Crear Cuestionario</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
