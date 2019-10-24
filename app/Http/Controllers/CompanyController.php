<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CompanyController extends Controller
{
    function read(){
        $company = DB::table('company')->get();
        return $company;
    }
    function edit($id){
        $company = DB::table('company')->where('company_id',$id);
        return $company;
    }
    function update(Request $request){
        DB::table('company')->where('company_id',$request->id)->update([
            'name' => $request->name,
            'est_date' => $request->est_date,
            'type' => $request->type,
            'shareholder' => $request->shareholder,
            'alliance' => $request->alliance,
            'MRO' => $request->MRO,
            'fleet_size' => $request->fleet_size,
            'destination' => $request->destination,
            'customer_since' => $request->customer_since,
        ]);
    }
    function delete($id){
        DB::table('company')->where('company_id',$id)->delete();
        return 'deleted';
    }
}
