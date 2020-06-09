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
        <form action="#" method="post">
            @csrf
            @foreach($questionnaire->questions as $key => $question)
                <div class="card">
                    <div class="card-header">
                        <strong>{{ $key + 1 }}</strong> {{ $question->question}}
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
        </form>
    </div>
</div>
@endsection
