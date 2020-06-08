@extends('layouts.app')

@section('information')
    @include('partials.information',[
        "title" => __("Plataforma de Asesorías de Matemáticas CEM"),

    ])
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                {{__("Crear una nueva pregunta")}}
            </div>
            <div class="card-body">
            <form action="/questionnaires/{{$questionnaire->id}}/questions" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="question">Pregunta</label>
                        <input name="question[question]" type="text" class="form-control"
                        value ="{{ old('question.question')}}"
                        id="question" aria-describedby="questionHelp" placeholder="Escribe tu pregunta">

                        @error('question.question')
                            <small class="text-danger">{{ $message}}</small>
                        @enderror
                    </div>

                    <div class="form-group">
                        <fieldset>
                            <legend>Opciones</legend>
                            <small id="choicesHelp" class="form-text text-muted">Da respuestas que den una solucion correcta</small>
                            <div>
                                <div class="form-group">
                                    <label for="answer1">Opcion 1</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.0.answer')}}"
                                    id="answer1" aria-describedby="choicesHelp" placeholder="Escribe una respuesta">

                                    @error('answers.0.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer2">Opcion 2</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.1.answer')}}"
                                    id="answer2" aria-describedby="choicesHelp" placeholder="Escribe otra respuesta">

                                    @error('answers.1.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer3">Opcion 3</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.2.answer')}}"
                                    id="answer3" aria-describedby="choicesHelp" placeholder="Lo mismo de arriba">

                                    @error('answers.2.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer4">Opcion 4</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.3.answer')}}"
                                    id="answer4" aria-describedby="choicesHelp" placeholder="Otra respuesta">

                                    @error('answers.3.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-primary">Agregar Pregunta</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
