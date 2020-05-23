<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SubscriptionController extends Controller
{
    public function __construct() {
        $this->middleware(function($request, $next) {
            if ( auth()->user()->subscribed('main') ) {
                return redirect('/')
                    ->with('message', ['warning', __("Actualmente ya estás suscrito a otro plan")]);
            }
            return $next($request);
        })
            ->only(['plans', 'processSubscription']);
    }

    public function plans () {
        return view('subscriptions.plans');
    }

    public function processSubscription () {
        $token = request('stripeToken');
        try {
            if ( \request()->has('coupon')) {
                \request()->user()->newSubscription('primary', 'prod_HKNc0Y6Pi0Ao8A')
                    ->withCoupon(\request('coupon'))->create($token);
            } else {
                \request()->user()->newSubscription('primary', 'prod_HITW0SJtMy4E6S')
                    ->create($token);
            }
            return redirect(route('subscriptions.admin'))
                ->with('message', ['success', __("Se ha suscrito correctamente")]);
        } catch (\Exception $exception) {
            $error = $exception->getMessage();
            return back()->with('message', ['danger', $error]);
        }
    }

}
