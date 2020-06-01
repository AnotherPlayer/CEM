<li><a class="nav-link" href="{{route('profile.index')}}">{{ __("Mi perfil") }}</a></li>
<li><a class="nav-link" href="">{{ __("Suscripciones") }}</a></li>
<li><a class="nav-link" href="">{{ __("Facturas") }}</a></li>
<li><a class="nav-link" href="{{route('courses.subscribed')}}">{{ __("Mis Cursos") }}</a></li>
<li><a class="nav-link" href="{{route('teacher.courses')}}">{{ __("Cursos desarrollados por mí") }}</a></li>
<li><a class="nav-link" href="{{route('courses.create')}}">{{ __("Crear curso") }}</a></li>
@include('partials.navigations.logged')
