@extends('layouts.app')

@section('information')
    @include('partials.information', ['title' => 'Cursos que imparto', 'icon' => 'building'])
@endsection

@section('content')
    <div class="pl-5 pr-5">
        <div class="row justify-content-center">
            @forelse($courses as $course)
                <div class="col-8 offset-2 listing-block">
                    <div class="media" style="height: 200px;">
                        <img
                            style="height: 200px; width: 300px;"
                            class="img-rounded"
                            src="{{$course ->pathAttachment()}}"

                            alt="{{$course->name}}"
                        >
                        <div class="media-body pl-3" style="height: 200px">
                            <div class="badge-info text-white text-center">
                                {{ $course->category->name }}<br>
                            </div>
                            <br>
                            <div class="text-center">
                                <h5><strong>Curso:</strong> {{ $course->name }}</h5>
                                <h5><strong>Estudiantes:</strong> {{ $course->students_count }}</h5>
                            </div>
                            @include('partials.courses.teacher_action_buttons')

                        </div>
                    </div>
                </div>
            @empty
                <div class="alert alert-dark">
                    {{ __("No tienes ningún curso todavía") }}<br/>
                    <a class="btn btn-course btn-block" href="{{ route('courses.create') }}">
                        {{ __("Crear mi primer curso!") }}
                    </a>
                </div>
            @endforelse

        </div>
        <div class="row justify-content-center">
            {{ $courses->links() }}
        </div>
    </div>

@endsection
