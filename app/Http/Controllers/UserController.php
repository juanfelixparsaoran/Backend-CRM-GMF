<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        // mengambil data dari table pegawai
        $pegawai = DB::table('user')->get();

        return $pegawai;
    }

    public function create(Request $request)
    {
        $company = DB::table('company')->where('name',$request->company_name)->get();
        print_r($company);
        DB::table('customer')->insert([
            'name' => $request->name,
            'position' => $request->position,
            'religion' => $request->religion,
            'birthday' => $request->birthday,
            'email' => $request->email,
            'role' => $request->role,
            'status' => $request->status,
            'company_id' => $company[0]->company_id
        ]);
        
        $customer = DB::table('customer')->get();
        DB::table('user')->insert([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'customer_id' => $customer[count($customer)-1]->customer_id
        ]);

        return 'user inserted';
    }

    public function createForm()
    {
        return view('create');
    }

    function edit($id){
        $user = DB::table('user')->where('user_id',$id)->get();
        return $user;
    }

    public function update(Request $request){
        $user = DB::table('user')->where('user_id',$request->id)->update([
            'username' => $request->username,
            'password' => bcrypt($request->password),
        ]);

        return 'user updated';
    }

}
