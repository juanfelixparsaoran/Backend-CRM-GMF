<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CompanyController extends Controller
{
    function read(){
        $company = DB::table('company')->get();
        return response()->json([
            'data' => $company
        ]);
    }
    function edit($id){
        $company = DB::table('company')->where('company_id',$id)->get();
        if (!$company->isEmpty()){
            return response()->json([
                'message' => 'Company found',
                'data' => $company
            ]);
        }else{
            return response()->json([
                'message' => 'Company not found'
            ]);
        }
    }
    function update(Request $request){
        DB::table('company')->where('company_id',$request->id)->update([
            'name' => $request->name,
            'region' => $request->region,
            'country' => $request->country,
            'role' => $request->role,
            'business_model' => $request->business_model,
            'status' => $request->status,
            'est_date' => $request->est_date,
            'type' => $request->type,
            'customer_type' => $request->customer_type,
            'shareholder' => $request->shareholder,
            'alliance' => $request->alliance,
            'MRO' => $request->MRO,
            'fleet_size' => $request->fleet_size,
            'destination' => $request->destination,
            'customer_since' => $request->customer_since,
        ]);
        return response()->json([
            'message' => 'Company Updated'
        ]);
    }
    function delete($id){
        DB::table('company')->where('company_id',$id)->delete();
        return response()->json([
            'message' => 'Company Deleted'
        ]);
    }
    function create(Request $request){
        DB::table('company')->insert([
            'name' => $request->name,
            'region' => $request->region,
            'country' => $request->country,
            'role' => $request->role,
            'business_model' => $request->business_model,
            'status' => $request->status,
            'est_date' => $request->est_date,
            'type' => $request->type,
            'customer_type' => $request->customer_type,
            'shareholder' => $request->shareholder,
            'alliance' => $request->alliance,
            'MRO' => $request->MRO,
            'fleet_size' => $request->fleet_size,
            'destination' => $request->destination,
            'customer_since' => $request->customer_since,
        ]);
        return response()->json([
            'message' => 'Company Created'
        ]);
    }
}
