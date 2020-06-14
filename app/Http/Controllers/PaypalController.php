<?php

namespace App\Http\Controllers;

use App\Course;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PayPal\Api\Amount;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Rest\ApiContext;
use Symfony\Component\Console\Input\Input;


class PaypalController extends Controller
{
    private $apiContext;


    public function __construct()
    {
        $payPalConfig = Config::get('paypal');

        $this->apiContext = new ApiContext(
            new OAuthTokenCredential(
                'ASpsoJXhKLD3gIx6EDDHY35NIRpOLb5SVJrDZlcpI6rBZlVHR49j5VXkEFnu2mBMMxO66pljMFu_I1Zk',
                'EGyF59q2O7ELydFjSlfSe8EQMasyxv0mH55VC1YCNt3Zk39SxNlc0WuVzSXz64tFKgkyv8gt3wUj0Am5'
            )
        );
    }

    public function payWithPaypal(Course $course)
    {

        dd($course);

        $payer = new Payer();
        $payer->setPaymentMethod('paypal');

        $amount = new Amount();
        $amount->setTotal('3.99');
        $amount->setCurrency('USD');

        $transaction = new Transaction();
        $transaction->setAmount($amount);
        //$transaction->setDescription('See your course');

        $callbackUrl = route('paypal.status');


        $redirectUrls = new RedirectUrls();
        $redirectUrls->setReturnUrl($callbackUrl)
            ->setCancelUrl($callbackUrl);

        $payment = new Payment();
        $payment->setIntent('sale')
            ->setPayer($payer)
            ->setTransactions(array($transaction))
            ->setRedirectUrls($redirectUrls);

        // After Step 3
        try {
            $payment->create($this->apiContext);
            //echo $payment;
            //$course->students()->attach(auth()->user()->student->id);

            return redirect()->away($payment->getApprovalLink());// redirect()->to()

        } catch (\PayPal\Exception\PayPalConnectionException $ex) {
            // This will print the detailed information on the exception.
            //REALLY HELPFUL FOR DEBUGGING
            echo $ex->getData();
        }




    }

    public function payPalStatus(Request $request)
    {

        $paymentId = $request->input('paymentId');
        $token = $request->input('token');
        $payerId = $request->input('PayerID');




        if (!$paymentId || !$payerId || !$token){
            return view('paypal.fail');
        }

        $payment = Payment::get ($paymentId, $this->apiContext);
        $execution = new PaymentExecution();
        $execution->setPayerId($payerId);

        //Ejecutar el pago

        $result = $payment->execute($execution,$this->apiContext);
        //dd($result);

        if($result->getState() === 'approved'){
            //Ejecución de la inscripción al curso

        }

        $status= "Lo sentimos el pago no se pudo realizar";
        return "Lo sentimos el pago no se pudo realizar";

    }

    public function payPalFail(){
        return view('paypal.fail');
    }

    public function inscribe_paypal(Course $course)
    {
        $course->students()->attach(auth()->user()->student->id);
        return view('welcome');
    }


}
