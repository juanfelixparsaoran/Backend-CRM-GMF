<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CompanyAdsController extends Controller
{
    function add($ads_id,$company_id){
        $ads = DB::table('company_ads')->where('ads_id',$ads_id)->where('company_id',$company_id)->get();
        if ($ads->isEmpty()){
            DB::table('company_ads')->insert([
                'ads_id' => $ads_id,
                'company_id' => $company_id
            ]);
            return response()->json([
                'message' => 'Ads added to active ads'
            ]);
        }else{
            return response()->json([
                'message' => 'Ads already active in this company'
            ]);
        }

    }

    function remove($ads_id,$company_id){
        $ads = DB::table('company_ads')->where('ads_id',$ads_id)->where('company_id',$company_id)->delete();
        return response()->json([
            'message' => 'Ads Removed'
        ]);
    }
}
