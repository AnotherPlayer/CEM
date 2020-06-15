
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Categorías</div>

                <div class="panel-body">
                    <p><strong>Nombre: </strong>     {{ $categoria->name }}</p>
                    <p><strong>Localización: </strong>  {{ $categoria->description }}</p>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection

