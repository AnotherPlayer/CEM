<div class="col-2">
    @auth
        @can('opt_for_course', $course)
            @can('subscribe', $course)
                <a class="btn btn-subscribe btn-bottom btn-block" href="{{route('paypal.pay_paypal' )}}">
                    <i class="fa fa-bolt"></i> {{ __("Comprar") }}
                </a>
            @else
                @can('inscribe', $course)
                    <a class="btn btn-subscribe btn-bottom btn-block" href="{{route('courses.inscribe' ,$course->slug)}}">
                        <i class="fa fa-bolt"></i> {{ __("Adquirir") }}
                    </a>
                @else
                    <a class="btn btn-subscribe btn-bottom btn-block" href="#">
                        <i class="fa fa-bolt"></i> {{ __("Adquirido") }}
                    </a>
                @endcan
            @endcan
        @else
            <a class="btn btn-subscribe btn-bottom btn-block" href="#">
                <i class="fa fa-user"></i> {{ __("Soy autor") }}
            </a>
        @endcan
    @else
        <a class="btn btn-subscribe btn-bottom btn-block" href="{{ route('login') }}">
            <i class="fa fa-user"></i> {{ __("Acceder") }}
        </a>
    @endauth
</div>
