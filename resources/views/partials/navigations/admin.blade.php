<li><a class="nav-link" href="{{route('admin.courses')  }}">{{ __("Administrar cursos") }}</a></li>
<li><a class="nav-link" href="{{route('courses.subscribed')}}">{{ __("Mis cursos") }}</a></li>
<li><a class="nav-link" href="{{route('admin.students')}}">{{ __("Administrar estudiantes") }}</a></li>
<li><a class="nav-link" href="{{route('admin.teachers')}}">{{ __("Administrar profesores") }}</a></li>
<li><a class="nav-link" href="{{route('admin.categories_index')}}">{{ __("Categorías de Cursos") }}</a></li>
@include('partials.navigations.logged')
