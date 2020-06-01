<form action="{{ route('courses.destroy',   $course->slug) }}" method="POST">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-danger text-white">
        <i class="fa fa-trash"></i> {{ __("Eliminar curso") }}
    </button>
</form>
