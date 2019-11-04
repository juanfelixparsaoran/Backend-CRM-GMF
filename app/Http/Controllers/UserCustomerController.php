<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserCustomerController extends Controller
{
    function read(){
        $user_customer = DB::table('user_customer')->get();
        return response()->json([
            'data' => $user_customer
        ]);
    }

    function edit($id){
        $user_customer = DB::table('user_customer')->where('user_customer_id',$id)->get();
        if (!$user_customer->isEmpty()){
            return response()->json([
                'message' => 'Customer found',
                'data' => $user_customer
            ]);
        }else{
            return response()->json([
                'message' => 'Customer not found'
            ]);
        }
    }

    function update(Request $request){
        DB::table('user_customer')->where('user_customer_id',$request->id)->update([
            'name' => $request->name,
            'position' => $request->position,
            'religion' => $request->religion,
            'birthday' => $request->birthday,
            'email' => $request->email,
        ]);
        return response()->json([
            'message' => 'Customer Updated'
        ]);
    }
    function delete($id){
        DB::table('user_customer')->where('user_customer_id',$id)->delete();
        DB::table('user')->where('user_customer_id',$id)->delete();
        return response()->json([
            'message' => 'Customer Deleted'
        ]);
    }
}
