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
        echo $request;
        DB::table('customer')->insert([
            'name' => $request->name,
            'position' => $request->position,
            'religion' => $request->religion,
            'birthday' => $request->birthday,
            'email' => $request->email,
            'role' => $request->role,
            'status' => $request->status
        ]);
        
        $customer = DB::table('customer')->get();
        DB::table('user')->insert([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'customer_id' => $customer[count($customer)-1]->customer_id
        ]);

        return redirect('/tes');
    }

    public function createForm()
    {
        return view('create');
    }

}
