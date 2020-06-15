<?php

namespace App\Http\Controllers;

use App\Course;
use App\Helper\Helper;
use App\Http\Requests\CourseRequest;
use App\Mail\NewStudentInCourse;
use App\Playlist;
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


    public function addReview()
    {

    }

    public function create()
    {
        $course = new Course;
        $btnText = __("Enviar Curso a Revisión");
        return view('courses.form', compact('course', 'btnText'));
    }

    public function store(CourseRequest $course_request)
    {
        $yt = request()->input('youtube_url');
        $embed = str_replace('playlist?','embed/videoseries?',$yt);

        $picture = Helper::uploadFile('picture', 'courses');
        $course_request->merge(['picture' => $picture]);
        $course_request->merge(['teacher_id' => auth()->user()->teacher->id]);
        $course_request->merge(['status' => Course::PENDING]);
        $course_request->merge(['youtube_url' => $embed]);
        Course::create($course_request->input());
        return back()->with('message', ['success', __("Curso enviado de manera correcta, pendiente de aprobación")]);
    }

    public function edit($slug)
    {
        $course = Course::with(['requirements', 'goals'])->withCount(['requirements', 'goals'])
            ->whereSlug($slug)->first();
        $btnText = __("Actualizar Curso");
        return view('courses.form', compact('course', 'btnText'));
    }

    public function update(CourseRequest $course_request, Course $course)
    {
        if($course_request->hasFile('picture')) {
            \Storage::delete('courses/' . $course->picture);
            $picture = Helper::uploadFile( "picture", 'courses');
            $course_request->merge(['picture' => $picture]);
        }
        $course->fill($course_request->input())->save();
        return redirect("/courses/$course->slug/edit")->with('message', ['success', __("¡Curso actualizado!")]);
    }


    public function destroy(Course $course)
    {
        try {
            $course->delete();
            return back()->with('message', ['success', __("Curso eliminado correctamente")]);
        } catch (\Exception $exception) {
            return back()->with('message', ['danger', __("Error eliminando el curso")]);
        }
    }
}
