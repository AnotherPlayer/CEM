@extends('layouts.app')

@section('information')
    @include('partials.information',[
        "title" => __("Plataforma de Asesorías de Matemáticas CEM"),

    ])
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8">
        <h1>{{$questionnaire->title}}</h1>
    <form action="/cuestionario/{{ $questionnaire->id}}-{{Str::slug($questionnaire->title) }}" method="post">
            @csrf
            @foreach($questionnaire->questions as $key => $question)
                <div class="card">
                    <div class="card-header">
                        <strong>{{ $key + 1 }}</strong> {{ $question->question}}
                    </div>

                    <div class="card-body">

                        @error('responses.' . $key . '.answer_id')
                        <small class="text-danger">Necesitas contestar esta pregunta</small>
                        @enderror

                        <ul class="list-group">
                            @foreach($question->answers as $answer)
                                <label for="answer{{ $answer->id}}">
                                    <li class="list-group-item">
                                        <input type="radio" name="responses[{{$key}}][answer_id]" id="answer{{ $answer->id}}"
                                        {{(old('responses.' . $key . '.answer_id') == $answer->id ? 'checked' : '' )}}
                                        class="mr-2" value="{{ $answer->id}}">{{$answer->answer}}</input>
                                        {{-- El input oculto es para poder ver a que pregunta corresponde la respuesta --}}
                                    <input type="hidden" name="responses[{{$key}}][question_id]" value="{{ $question->id}}"></input>
                                    </li>
                                </label>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endforeach
            <button class="btn btn-dark" type="submit">Enviar respuestas</button>
        </form>
    </div>
</div>
@endsection
