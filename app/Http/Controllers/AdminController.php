<?php

namespace App\Http\Controllers;

use App\Category;
use App\Course;
use App\Http\Requests\CategoriaRequest;
use App\Mail\CourseApproved;
use App\Mail\CourseRejected;
use App\Teacher;
use App\User;
use App\VueTables\EloquentVueTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function courses()
    {
        return view('admin.courses');
    }
    public function categories_courses()
    {
        $categorias = Category::paginate();

        return view('admin.categories_index',compact('categorias'));
    }

    public function create()
    {

        return view('admin.create');
    }


    public function store(Request $request)
    {
        $categoria= Category::create($request-> all());

        return redirect()->route('admin.categories_index',$categoria-> id)
            ->with('message', ['success', __("Categoría Guardada Con Éxito")]);
    }

    public function edit(Category $categorias)
    {
        return view('admin.edit', compact('categorias'));

    }



    public function update(Request $request, Category $categorias)
    {
        $categorias->update($request->all());


        return redirect()->route('admin.edit',$categorias-> id)
            ->with('message', ['success', __("Categoría Actualizada Con Éxito")]);
    }


    public function destroy(Category $categorias)
    {
        $categorias ->delete();

        return back()->with('message', ['success', __("Categoría Eliminada Con Éxito")]);
    }



    public function coursesJson()
    {
        if (request()->ajax()) {
            $vueTables = new EloquentVueTables;
            /*************************************OBTENEMOS LA FK Y LA RELACIÓN*************************************/
            $data = $vueTables->get(new Course, ['courses.id', 'name', 'status', 'teacher_id'], ['teacher']);
            return response()->json($data);
        }
        return abort(401);
    }

    public function updateCourseStatus()
    {
        if (\request()->ajax()) {
            $course = Course::find(\request('courseId'));

            if (
                (int)$course->status !== Course::PUBLISHED &&
                !$course->previous_approved &&
                \request('status') === Course::PUBLISHED
            ) {
                $course->previous_approved = true;

            }

            if (
                (int)$course->status !== Course::REJECTED &&
                !$course->previous_rejected &&
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

    public function students()
    {
        $students =  User::orderBy('name', 'ASC')->where("role_id","=",3)->select("id","name",'email')->paginate(10);

        return view('admin.students', compact('students'));
    }

    public function destroy_student($id)
    {
        User::destroy($id);

        return back()->with('message', ['success', __('Estudiante eliminado con Éxito')]);
    }

    public function teachers()
    {

        $teachers =  User::orderBy('name', 'ASC')->where("role_id","=",2)->select("id","name",'email')->paginate(10);
        return view('admin.teachers', compact('teachers'));
    }

    public function destroy_teacher($id)
    {

        User::destroy($id);

        return back()->with('message', ['success', __('Asesor eliminado con Éxito')]);

    }


}
