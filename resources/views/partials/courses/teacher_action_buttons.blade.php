<div class="btn-group">
    @if((int) $course->status === \App\Course::PUBLISHED)
        <a class="btn btn-course" href="{{ route('courses.detail',  $course->slug) }}">
            {{ __("Detalle") }}
        </a>  &nbsp&nbsp
        <a class="btn btn-warning text-white" href="{{ route('courses.edit', $course->slug) }}">
            {{ __("Editar curso") }}
        </a>  &nbsp&nbsp
        @include('partials.courses.btn_forms.delete')
    @elseif((int) $course->status === \App\Course::PENDING)
        <a class="btn btn-primary text-white" href="#">
            {{ __("Curso pendiente de revisión") }}
        </a>   &nbsp&nbsp
        <a class="btn btn-course" href="{{ route('courses.detail',  $course->slug) }}">
            {{ __("Detalle"  )  }}
        </a>   &nbsp&nbsp


        <a class="btn btn-warning text-white" href="{{ route('courses.edit', $course->slug) }}">
            {{ __("Editar curso") }}
        </a> &nbsp&nbsp
        @include('partials.courses.btn_forms.delete')
    @else
        <a class="btn btn-danger text-white" href="#">
            {{ __("Curso rechazado") }}
        </a>  &nbsp&nbsp
        @include('partials.courses.btn_forms.delete')
    @endif
</div>
