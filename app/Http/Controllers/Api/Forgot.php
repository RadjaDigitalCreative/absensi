<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;

class Forgot extends Controller
{

	public function forgot() {
		$credentials = request()->validate(['email' => 'required|email']);

		Password::sendResetLink($credentials);

		return response()->json(["msg" => 'Reset password link sent on your email id.']);
	}
}
