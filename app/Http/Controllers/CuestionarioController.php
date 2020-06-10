<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CuestionarioController extends Controller
{
    public function show(\App\Questionnaire $questionnaire, $slug){
        $questionnaire->load('questions.answers');
        return view('cuestionario.show', compact('questionnaire'));
    }

    public function store(){
        dd(request()->all());
    }
}
