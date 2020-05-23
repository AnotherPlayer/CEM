<div class="card card-01">
    <img
        class="card-img-top"
        src="{{ $course->pathAttachment() }}"
        alt="{{ $course->name }}"
    />
    <div class="card-body">
        <span class="badge-box"></span>
        <h4 class="card-title">{{ $course->name }}</h4>
        <hr/>
        <span class="badge badge-success badge-cat">{{ $course->category->name }}</span>
        <p class="card-text">
            {{ Str::limit($course->description, 100) }}
        </p>
        <a
            href="{{ route('courses.detail', $course->slug) }}"
            class="btn btn-course btn-block"
        >
            {{ __("Más información") }}
        </a>

    </div>
</div>
