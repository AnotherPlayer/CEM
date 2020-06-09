<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuestionController extends Controller
{
    public function create(\App\Questionnaire $questionnaire){
        return view('question.create', compact('questionnaire'));
    }

    public function store(\App\Questionnaire $questionnaire){
        //TODO: Validacion de request.

        $data = request()->all();
        $question = $questionnaire->questions()->create($data['question']);
        $question ->answers()->createMany($data['answers']);

        return redirect('/questionnaires/'.$questionnaire->id);
    }
}
