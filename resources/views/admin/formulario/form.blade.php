@if(count($errors) >0)
    <div class="alert alert-danger" role="alert">
        <strong>¡Por favor verifique los siguientes errores!</strong>
        <ul>
            @foreach($errors-> all() as $error)
                <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>

@endif

<div class="form-group">
	{{ Form::label('name', 'Nombre') }}
	{{ Form::text('name', null, ['class' => 'form-control', 'id' => 'name' ,'placeholder'=>'Ingrese nombre de la categoría','required' => 'required']) }}
</div>
<div class="form-group">
	{{ Form::label('description', 'Descripción') }}
	{{ Form::text('description', null, ['class' => 'form-control','placeholder'=>'Descripción','required'=>'required']) }}
</div>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>
