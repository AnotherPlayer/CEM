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
                        id="question" aria-describedby="questionHelp" placeholder="Escribe tu pregunta" required>

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
                                    <label for="answer1">Opción 1</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.0.answer')}}"
                                    id="answer1" aria-describedby="choicesHelp" placeholder="Escribe una respuesta" required>
                                    <input type="checkbox" name="answers[0][correct]" value="1"> Respuesta Correcta</input>

                                    @error('answers.0.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer2">Opción 2</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.1.answer')}}"
                                    id="answer2" aria-describedby="choicesHelp" placeholder="Escribe otra respuesta" required>
                                    <input type="checkbox" name="answers[1][correct]" value="1"> Respuesta Correcta</input>

                                    @error('answers.1.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer3">Opción 3</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.2.answer')}}"
                                    id="answer3" aria-describedby="choicesHelp" placeholder="Escribe otra respuesta" required>
                                    <input type="checkbox" name="answers[2][correct]" value="1" > Respuesta Correcta</input>
                                    @error('answers.2.answer')
                                        <small class="text-danger">{{ $message}}</small>
                                    @enderror
                                </div>
                            </div>

                            <div>
                                <div class="form-group">
                                    <label for="answer4">Opción 4</label>
                                    <input name="answers[][answer]" type="text" class="form-control"
                                    value ="{{ old('answers.3.answer')}}"
                                    id="answer4" aria-describedby="choicesHelp" placeholder="Escribe otra respuesta" required>
                                    <input type="checkbox" name="answers[3][correct]" value="1"> Respuesta Correcta</input>
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
