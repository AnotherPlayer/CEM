<?php

namespace App\Http\Controllers;

use App\Course;
use App\Helpers\Helper;
use App\Http\Requests\CourseRequest;
use App\Mail\NewStudentInCourse;
use App\Review;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function show(Course $course)
    {
        $course->load([
            'category' => function ($q) {
                $q->select('id', 'name');
            },
            'goals' => function ($q) {
                $q->select('id', 'course_id', 'goal');
            },
            'level' => function ($q) {
                $q->select('id', 'name');
            },
            'requirements' => function ($q) {
                $q->select('id', 'course_id', 'requirement');
            },
            'reviews.user',
            'teacher'
        ])->get();

        $related = $course->relatedCourses();

        return view('courses.detail', compact('course', 'related'));
    }

    public function inscribe(Course $course)
    {
        $course->students()->attach(auth()->user()->student->id);
        return back()->with('message', ['success', __("Inscrito correctamente al curso")]);
    }

    public function subscribed()
    {
        $courses = Course::whereHas('students', function ($query) {
            $query->where('user_id', auth()->id());
        })->get();
        return view('courses.subscribed', compact('courses'));

    }
    public function addReview () {

    }

    public function create(){
        $course = new Course;
        $btnText = __("Enviar Curso a Revision");
        return view('courses.form', compact('course', 'btnText'));
    }

    public function store (CourseRequest $course_request) {
        $picture = Helper::uploadFile('picture','courses');
        $course_request->merge(['picture' => $picture]);
        $course_request->merge(['teacher_id' => auth()->user()->teacher->id]);
        $course_request->merge(['status' => Course::PENDING]);
        Course::create($course_request->input());
    }
}
