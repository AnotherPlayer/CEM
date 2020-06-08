<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuestionnaireController extends Controller
{
    public function create()
    {
        return view('questionnaire.create');
    }

    public function store(){
        $data = request()->validate([
            'title' => 'required',
            'purpose' => 'required'
        ]);
    }
}
