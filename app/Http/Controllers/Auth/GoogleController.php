<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Socialite;
use Auth;
use Exception;
use App\User;
use DB;

class GoogleController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
    public function handleGoogleCallback()
    {
        if (Auth::check()) {
            return redirect('/home');
        }

        $oauthUser = Socialite::driver('google')->user();
        $user = User::where('google_id', $oauthUser->id)->first();
        if ($user) {
            Auth::loginUsingId($user->id);
            return redirect('/home');
        } else {
            $newUser = User::create([
                'name' => $oauthUser->name,
                'email' => $oauthUser->email,
                'google_id'=> $oauthUser->id,
                // password tidak akan digunakan ;)
                'password' => md5($oauthUser->token),
            ]);
            DB::table('role_payment')
            ->insert([
                'user_id' =>  $newUser['id'],
                'pay' =>  2,
                'dibayar' => date('Y-m-d', strtotime('+30 days', strtotime(now())))

            ]);
            Auth::login($newUser);
            return redirect('/home');
        }
    }
}