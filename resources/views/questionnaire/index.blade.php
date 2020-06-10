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
               Panel de Administracion de Cuestionarios
            </div>
            <div class="card-body">
                <a href="/questionnaires/create" class="btn btn-dark">Crear cuestionario</a>
            </div>
        </div>
        <div class="card mt-4">
            <div class="card-header">
               Mis cuestionarios
            </div>
            <div class="card-body">
                <ul class="list-group">
                    @foreach ($questionnaires as $questionnaire)
                        <li class="list-group-item">
                            <a href="{{ $questionnaire->path()}}">{{ $questionnaire->title}}</a>

                            <div class="mt-2">
                                <small class="font-weight-bold">Compartir Cuestionario</small>
                                <p>
                                    <a href="{{ $questionnaire->publicPath()}}">{{ $questionnaire->publicPath()}}</a>
                                </p>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection
