<div class="col-2">
    @auth
        @can('opt_for_course', $course)
            @can('subscribe', \App\Course::class)
                <a class="btn btn-subscribe btn-bottom btn-block"
                   href="{{ route('courses.inscribe',  $course->slug) }} {{-- route('subscriptions.plans') --}}">
                     {{ __("Subscribirme") }}
                </a>
            @else
                @can('inscribe', $course)
                    <a class="btn btn-subscribe btn-bottom btn-block"
                       href="{{ route('courses.inscribe',  $course->slug) }}">
                       {{ __("Inscribirme") }}
                    </a>
                @else
                    <a class="btn btn-subscribe btn-bottom btn-block" href="#">
                         {{ __("Inscrito") }}
                    </a>
                @endcan
            @endcan
        @else
            <a class="btn btn-subscribe btn-bottom btn-block" href="#">
              {{ __("Soy autor") }}
            </a>
        @endcan
    @else
        <a class="btn btn-subscribe btn-bottom btn-block" href="{{ route('login') }}">
            {{ __("Acceder") }}
        </a>
    @endauth
</div>
