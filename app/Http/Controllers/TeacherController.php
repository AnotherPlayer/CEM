<?php

namespace App\Http\Controllers;

use App\Course;
use App\Mail\MessageToStudent;
use App\Student;
use Yajra\DataTables\DataTables;
use App\User;
use Illuminate\Http\Request;

class TeacherController extends Controller
{


    public function students()
    {
        $students = Student::with('user', 'courses.reviews')
            ->whereHas('courses', function ($q) {
                $q->where('teacher_id', auth()->user()->teacher->id)->select('id', 'teacher_id', 'name')->withTrashed();
            })->get();

        $actions = 'students.datatables.actions';
        return DataTables::of($students)->addColumn('actions', $actions)->rawColumns(['actions', 'courses_formatted'])->make(true);
    }

    public function sendMessageToStudent()
    {

        return response()->json(['res' => true]);
    }
}
