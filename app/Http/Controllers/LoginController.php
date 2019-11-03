<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        if (!$request->session()->has('username')){
            return view('login');
        }else{
            return 'Homepage';
        }
    }

    public function logout(Request $request)
    {
        $request->session()->forget('username');
        return response()->json([
            'message' => 'Successfully Logout'
        ]);
    }

    public function auth(Request $request)
    {
        $login = false;
        $users = DB::table('user')->get();
        foreach ($users as $user)
        {
            if ($user->username == $request->username && (Hash::check($request->password, $user->password)))
            {
                $request->session()->put('username',$request->username);
                $login = true;
            }
        }
        if ($login){
            return response()->json([
                'message' => 'Successfully Login'
            ]);
        }else{
            return response()->json([
                'message' => 'Failed to Login'
            ]);
        }
    }
}
