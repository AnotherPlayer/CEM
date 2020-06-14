@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="{{ asset('css/pricing.css') }}">
@endpush

@section('information')
    @include('partials.information', [
        'title' => __("Subscríbete ahora a uno de nuestros planes"),

    ])
@endsection

@section('content')
    <div class="container">
        <div class="pricing-table pricing-three-column row">
            <div class="plan col-sm-4 col-lg-4">
                <div class="plan-name-bronze">
                    <h2>{{ __("MENSUAL") }}</h2>
                    <span>{{ __(":price / Mes", ['price' => '$ 99,00']) }}</span>
                </div>
                <ul>
                    <li class="plan-feature">{{ __("Acceso a todos los cursos") }}</li>
                    <li class="plan-feature">{{ __("Acceso a todos los archivos") }}</li>
                    <li class="plan-feature">
                        @include('partials.stripe.form', [
                            "product" => [
                                "name" => __("Suscripción"),
                                "description" => __("MENSUAL"),
                                "type" => "monthly",
                                "amount" => 999,99
                            ]
                        ])
                    </li>
                </ul>
            </div>

            <div class="plan col-sm-4 col-lg-4">
                <div class="plan-name-silver">
                    <h2>{{ __("Trimestral") }}</h2>
                    <span>{{ __(":price / 3 meses", ['price' => '$ 249,00']) }}</span>
                </div>
                <ul>
                    <li class="plan-feature">{{ __("Acceso a todos los cursos") }}</li>
                    <li class="plan-feature">{{ __("Acceso a todos los archivos") }}</li>
                    <li class="plan-feature">
                        @include('partials.stripe.form',
                            ["product" => [
                                'name' => 'Suscripción',
                                'description' => 'TRIMESTRAL',
                                'type' => 'monthly',

                                'amount' => 1299.99
                            ]]
                        )
                    </li>
                </ul>
            </div>

            <div class="plan col-sm-4 col-lg-4">
                <div class="plan-name-gold">
                    <h2>{{ __("ANUAL") }}</h2>
                    <span>{{ __(":price / 12 meses", ['price' => '$ 899,00']) }}</span>
                </div>
                <ul>
                    <li class="plan-feature">{{ __("Acceso a todos los cursos") }}</li>
                    <li class="plan-feature">{{ __("Acceso a todos los archivos") }}</li>
                    <li class="plan-feature">
                        @include('partials.stripe.form',
                            ["product" => [
                                'name' => 'Suscripción',
                                'description' => 'ANUAL',
                                'type' => 'year',
                                'interval'=> 'year',
                                'amount' => 3499.99
                            ]]
                        )
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection
