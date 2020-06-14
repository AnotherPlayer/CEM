<?php

namespace App\Policies;

use App\Course;
use App\Role;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class CoursePolicy
{
    use HandlesAuthorization;


    public function opt_for_course (User $user, Course $course) {
        return  ! $user->teacher || $user->teacher->id !== $course->teacher_id;
    }

    public function subscribe (User $user, Course $course) {
        return $user->role_id !== Role::ADMIN ;
    }


    // Modifique esto aqui por que si yo, maestro, creo un curso y le doy detalles me manda alv.
    public function inscribe (User $user, Course $course) {
        return ! $course->students->contains($user->id);
    }

    public function review (User $user, Course $course) {
        return ! $course->reviews->contains('user_id', $user->id);
    }

}
