<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CuestionarioController extends Controller
{
    public function show(\App\Questionnaire $questionnaire, $slug){
        $questionnaire->load('questions.answers');
        return view('cuestionario.show', compact('questionnaire'));
    }

    public function store(\App\Questionnaire $questionnaire){
        $data = request()->validate([
            'responses.*.answer_id' => 'required',
            'responses.*.question_id' => 'required'
        ]);

        $user = auth()->user();
        // La habia regado aqui xd ya debe jalar para el mismo usuario.
        $userdata = array(
            "user_id" => $user->id,
            "name" => $user->name
        );

        if($data == null){
            return 'No se puede contestar este cuestionario.';
        }else{
            $survey = $questionnaire->cuestionarios()->create($userdata);
            $survey->respuestas()->createMany($data['responses']);
            return back();
        }

        // Aun no hay vista. calma :v
        //return 'Gracias';
    }
}
