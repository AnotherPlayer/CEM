<?php

namespace App\Http\Controllers;

use App\Course;
use App\Mail\CourseApproved;
use App\Mail\CourseRejected;
use App\Teacher;
use App\User;
use App\VueTables\EloquentVueTables;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function courses () {
        return view('admin.courses');
    }

    public function coursesJson () {
        if(request()->ajax()) {
            $vueTables = new EloquentVueTables;
            /*************************************OBTENEMOS LA FK Y LA RELACIÓN*************************************/
            $data = $vueTables->get(new Course, ['courses.id', 'name', 'status', 'teacher_id'], ['teacher']);
            return response()->json($data);
        }
        return abort(401);
    }

    public function updateCourseStatus () {
        if (\request()->ajax()) {
            $course = Course::find(\request('courseId'));

            if(
                (int) $course->status !== Course::PUBLISHED &&
                ! $course->previous_approved &&
                \request('status') === Course::PUBLISHED
            ) {
                $course->previous_approved = true;

            }

            if(
                (int) $course->status !== Course::REJECTED &&
                ! $course->previous_rejected &&
                \request('status') === Course::REJECTED
            ) {
                $course->previous_rejected = true;

            }

            $course->status = \request('status');
            $course->save();
            return response()->json(['msg' => 'ok']);
        }
        return abort(401);
    }

    public function students () {
        return view('admin.students');
    }

    public function teachers () {
        $person = User::pluck('name', 'role_id');
        $teachers = Course::paginate();
        return view('admin.teachers', compact('teachers','person'));
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
