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
                {{__("Creacion de un nuevo cuestionario")}}
            </div>
            <div class="card-body">
                <form action="/questionnaires" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="title">Titulo del Cuestionario</label>
                        <input name="title" type="text" class="form-control" id="title" aria-describedby="titleHelp" placeholder="Titulo">
                        <small id="titleHelp" class="form-text text-muted">Ponle el nombre a tu cuestionario (generalmente el nombre de la materia)</small>
                    </div>
                    <div class="form-group">
                        <label for="purpose">Proposito del Cuestionario</label>
                        <input name="purpose" type="text" class="form-control" id="purpose" aria-describedby="purposeHelp" placeholder="Descripcion">
                        <small id="purposeHelp" class="form-text text-muted">Da una breve descripcion de que evaluara este cuestionario</small>
                    </div>
                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
