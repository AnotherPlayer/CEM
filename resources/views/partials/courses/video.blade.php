@cannot('inscribe', $course)

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
@endcannot
