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
                $user_logged = $user;
                if ($user->role == "Customer"){
                    $user_detail = DB::table('user_customer')->where('user_id',$user->user_id)->get();
                }else if ($user->role == "Admin"){
                    $user_detail = DB::table('user_admin')->where('user_id',$user->user_id)->get();
                }else{
                    $user_detail = DB::table('user_guest')->where('user_id',$user->user_id)->get();
                }
                $login = true;
            }
        }
        if ($login){
            return response()->json([
                'message' => 'Successfully Login',
                'data_user' => $user_logged,
                'detail_user' => $user_detail[0],
            ]);
        }else{
            return response()->json([
                'message' => 'Failed to Login'
            ]);
        }
    }
}
