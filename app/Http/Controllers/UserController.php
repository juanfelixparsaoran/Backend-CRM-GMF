<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function read()
    {
        // mengambil data dari table pegawai
        $user = DB::table('user')->get();
        return response()->json([
            'data' => $user
        ]);  
    }

    public function create(Request $request)
    {   
        DB::table('user')->insert([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'pass_raw' => $request->password,
            'role' => $request->role,
            'status' => $request->status
        ]);
        $user = DB::table('user')->where('username',$request->username)->get();
        $company = DB::table('company')->where('name',$request->company_name)->get();
        if ($request->role == 'Customer'){
            DB::table('user_customer')->insert([
                'name' => $request->name,
                'position' => $request->position,
                'religion' => $request->religion,
                'birthday' => $request->birthday,
                'email' => $request->email,
                'customer_role' => $request->customer_role,
                'user_id' => $user[0]->user_id,
                'company_id' => $company[0]->company_id
            ]);  
        }else if ($request->role == 'Admin'){
            DB::table('user_admin')->insert([
                'name' => $request->name,
                'position' => $request->position,
                'division' => $request->division,
                'user_id' => $user[0]->user_id
            ]);   
        }else{
            DB::table('user_guest')->insert([
                'name' => $request->name,
                'position' => $request->position,
                'division' => $request->division,
                'user_id' => $user[0]->user_id
            ]);  
        }

        return response()->json([
            'message' => 'User Created'
        ]);
    }

    public function createForm()
    {
        return view('create');
    }

    function edit($id){
        $user = DB::table('user')->where('user_id',$id)->get();
        if (!$user->isEmpty()){
            return response()->json([
                'message' => 'User found',
                'data' => $user
            ]);
        }else{
            return response()->json([
                'message' => 'User not found',
                'data' => []
            ]);
        }
    }

    public function update(Request $request){
        DB::table('user')->where('user_id',$request->id)->update([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'pass_raw' => $request->password,
        ]);

        $user = DB::table('user')->join('user_customer','user.user_id','=','user_customer.user_id')->where('user.user_id',$request->id)->get();
        DB::table('user_customer')->where('user_id',$user[0]->user_id)->update([
            'name' => $request->name,
            'position' => $request->position,
            'religion' => $request->religion,
            'birthday' => $request->birthday,
            'email' => $request->email,
            'position' => $user[0]->position,
        ]);

        return response()->json([
            'message' => 'User Updated'
        ]);
    }

    function delete($id){
        $user = DB::table('user')->where('user_id',$id)->get();
        if ($user->role == 'admin'){
            DB::table('user_admin')->where('user_id',$id)->delete();    
        }else if ($user->role == 'customer'){
            DB::table('user_customer')->where('user_id',$id)->delete();    
        }else{
            DB::table('user_guest')->where('user_id',$id)->delete(); 
        }

        DB::table('user')->where('user_id',$id)->delete();
        return response()->json([
            'message' => 'Successfully delete customer'
        ]);
    }

}
