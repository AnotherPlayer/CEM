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
                {{ $questionnaire->title }}
            </div>

            <div class="card-body">
                <a class="btn btn-dark" href="/questionnaires/{{ $questionnaire->id }}/questions/create">Agregar pregunta</a>
            </div>
        </div>
        @foreach($questionnaire->questions as $question)
            <div class="card">
                <div class="card-header">
                    {{ $question->question }}
                </div>

                <div class="card-body">
                    <ul class="list-group">
                        @foreach($question->answers as $answer)
                            <li class="list-group-item">{{ $answer->answer}}</li>
                        @endforeach
                    </ul>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
