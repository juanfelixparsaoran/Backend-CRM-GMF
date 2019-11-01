<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ServiceController extends Controller
{
    //
    function read(){
        $service = DB::table('service')->get();
        return $service;
    }
    function edit($id){
        $service = DB::table('service')->where('service_id',$id);
        return $service;
    }
    function update(Request $request){
        DB::table('service')->where('service_id',$request->id)->update([
            'name' => $request->name,
            'detail' => $request->detail,
            'image' => $request->image,
        ]);
        return 'service updated';
    }
    function delete($id){
        DB::table('service')->where('service_id',$id)->delete();
        return 'deleted';
    }

    function create(Request $request){
        DB::table('service')->insert([
            'name' => $request->name,
            'detail' => $request->detail,
            'image' => $request->image,
        ]);
        return 'service created';
    }
}
