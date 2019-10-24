<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    function read(){
        $customer = DB::table('customer')->get();
        return $customer;
    }

    function edit($id){
        $customer = DB::table('customer')->where('customer_id',$id)->get();
        return $customer;
    }
    function update(Request $request){
        DB::table('customer')->where('customer_id',$request->id)->update([
            'name' => $request->name,
            'position' => $request->position,
            'religion' => $request->religion,
            'birthday' => $request->birthday,
            'email' => $request->email,
            'role' => $request->role,
            'status' => $request->status
        ]);
        return 'customer updated';
    }
    function delete($id){
        DB::table('user')->where('customer_id',$id)->delete();
        DB::table('customer')->where('customer_id',$id)->delete();
        return 'customer deleted';
    }
}
