<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdsController extends Controller
{
    function read(){
        $ads = DB::table('ads')->get();
        return $ads;
    }

    function edit($id){
        $ads = DB::table('ads')->where('ads_id',$id)->get();
        return $ads;
    }
    function update(Request $request){
        DB::table('ads')->where('ads_id',$request->id)->update([
            'subject' => $request->subject,
            'image' => $request->image,
            'permalink' => $request->permalink
        ]);
        return 'ads updated';
    }
    function delete($id){
        DB::table('company_ads')->where('ads_id',$id)->delete();
        DB::table('ads')->where('ads_id',$id)->delete();
        return 'ads deleted';
    }
}
