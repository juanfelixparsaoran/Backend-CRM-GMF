<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\File;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class AdsController extends Controller
{
    function read(){
        $ads = DB::table('ads')->get();
        return response()->json([
            'data' => $ads
        ]);
    }
    function getAdsInCompany($id){
        $ads = DB::table('ads')->join('company_ads','ads.ads_id','=','company_ads.ads_id')->where('company_ads.company_id',$id)->get(['ads.ads_id','subject','image','permalink']);
        return response()->json([
            'data' => $ads
        ]);
    }

    function getInactiveAdsInCompany($id){
        $ads = DB::table('ads')->leftJoin('company_ads','ads.ads_id','=','company_ads.ads_id')->where('company_ads.company_id',NULL)->orWhere('company_ads.company_id','!=',$id)->get(['ads.ads_id','subject','image','permalink']);
        return response()->json([
            'data' => $ads
        ]);
    }

    function edit($id){
        $ads = DB::table('ads')->where('ads_id',$id)->get();
        if (!$ads->isEmpty()){
            return response()->json([
                'message' => 'ads found',
                'data' => $ads
            ]);
        }else{
            return response()->json([
                'message' => 'ads not found',
                'data' => []
            ]);
        }
    }
    function update(Request $request){
        $ads = DB::table('ads')->where('ads_id',$request->ads_is)->get();
        $path = $request->image != NULL ? Storage::putFile('ads', $request->image) : $ads[0]->image;
        DB::table('ads')->where('ads_id',$request->ads_id)->update([
            'subject' => $request->subject != NULL ? $request->subject : $ads[0]->subject,
            'image' => $path,
            'permalink' => $request->permalink != NULL ? $request->permalink : $ads[0]->permalink,
        ]);
        return response()->json([
            'message' => 'Ads Updated'
        ]);
    }
    function delete($id){
        DB::table('company_ads')->where('ads_id',$id)->delete();
        DB::table('ads')->where('ads_id',$id)->delete();
        return response()->json([
            'message' => 'Ads Deleted'
        ]);
    }

    function create(Request $request){
        $path = Storage::putFile('ads', $request->image);
        DB::table('ads')->insert([
            'subject' => $request->subject,
            'permalink' => $request->permalink,
            'image' => $path
        ]);
        return response()->json([
            'message' => 'Ads Created'
        ]);
    }
}
