<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Respuestas extends Model
{
    protected $guarded = [];

    public function cuestionario(){
        return $this->belongsTo(Cuestionario::class);
    }
}
