<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class RevenueController extends Controller
{
    //
    function read(){
        $revenue = DB::table('revenue')->get();
        return response()->json([
            'data' => $revenue
        ]);
    }

    function readRevenueInCompany($id){
        $revenue = DB::table('revenue')->where('company_id',$id)->get();
        return response()->json([
            'data' => $revenue
        ]);
    }

    function edit($id){
        $revenue = DB::table('revenue')->where('revenue_id',$id)->get();
        if (!$revenue->isEmpty()){
            return response()->json([
                'message' => 'revenue found',
                'data' => $revenue
            ]);
        }else{
            return response()->json([
                'message' => 'revenue not found',
                'data' => []
            ]);
        }
    }
    function update(Request $request){
        $revenue = DB::table('revenue')->where('revenue_id',$request->id)->get();
        DB::table('revenue')->where('revenue_id',$request->id)->update([
            'product' => $request->product != NULL ? $request->product : $revenue[0]->product,
            'sales' => $request->sales != NULL ? $request->sales : $revenue[0]->sales,
        ]);
        return response()->json([
            'message' => 'Revenue Updated'
        ]);
    }

    function delete($id){
        DB::table('revenue')->where('revenue_id',$id)->delete();
        return response()->json([
            'message' => 'Revenue Deleted'
        ]);
    }

    function create(Request $request){
        DB::table('revenue')->insert([
            'product' => $request->product,
            'sales' => $request->sales,
            'company_id' => $request->company_id
        ]);
        return response()->json([
            'message' => 'Revenue Created'
        ]);
    }
}
