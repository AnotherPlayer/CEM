@component('mail::message')

# {{ __("Curso Rechazado!") }}

{{ __("Tu curso :course no ha sido aprobado en la plataforma", ['course' => $course->name]) }}


@component('mail::button', ['url' => url('/')])
    {{ __("Ir a la plataforma") }}
@endcomponent

{{ __("Gracias") }},<br>
{{ config('app.name') }}

@endcomponent
