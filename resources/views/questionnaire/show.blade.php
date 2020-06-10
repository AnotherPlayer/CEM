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
            <a class="btn btn-dark" href="/cuestionario/{{$questionnaire->id}}-{{Str::slug($questionnaire->title)}}">Tomar Cuestionario</a>
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

                <div class="card-footer">
                    <form action="/questionnaires/{{ $questionnaire->id}}/questions/{{$question->id}}" method="post">
                        @method('DELETE')
                        @csrf

                        <button type="submit" class="btn btn-small btn-outline-danger">Borrar Pregunta</button>
                    </form>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
