<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cuestionario extends Model
{
    protected $guarded = [];

    public function questionnaire(){
        return $this->belongsTo(Questionnaire::class);
    }

    public function respuestas(){
        return $this->hasMany(Respuestas::class);
    }
}
