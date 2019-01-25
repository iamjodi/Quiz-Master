<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Session;

class AuthController extends Controller
{
    public function login(Request $request){
    	if(Auth::attempt($request->only('email','password'))){
    		$data = \App\User::where('email', $request->email)->first();

    		session(['userid' => $data->id]);
    		session(['role' => $data->role]);
    		return redirect('/question/index');
    	}

    	return redirect('/');
    }

    public function logout(Request $request){
    	Auth::logout();

    	return redirect('/');
    }
}
