@extends('layouts.app')

@section('information')
    @include('partials.courses.information')
@endsection

@section('content')
    <div class="pl-5 pr-5">
        <div class="row justify-content-center">
            @include('partials.courses.goals', ['goals' => $course->goals])
            @include('partials.courses.requirements', ['requirements' => $course->requirements])
            @include('partials.courses.description')
            @include('partials.courses.video')
            @include('partials.courses.form_review')
        </div>
    </div>

    <div class="col-12 pt-0 mt-4">
        <h2 class="text-muted">{{ __("Videos del Profesor") }}</h2>
        <hr/>
    </div>
    <div class="col-12">
        <p class="mb-0">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="{{ $course->youtube_url}}" allowfullscreen></iframe>
        </div>
        </p>
    </div>
@endsection
