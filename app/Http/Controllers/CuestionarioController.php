<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CuestionarioController extends Controller
{
    public function show(\App\Questionnaire $questionnaire, $slug){
        return view('cuestionario.show', compact('questionnaire'));
    }
}
