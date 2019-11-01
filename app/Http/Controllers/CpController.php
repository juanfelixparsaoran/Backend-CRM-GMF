<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CpController extends Controller
{
    //
    function read(){
        $gmf_cp = DB::table('gmf_cp')->get();
        return $gmf_cp;
    }
    function edit($id){
        $gmf_cp = DB::table('gmf_cp')->where('cp_id',$id);
        return $gmf_cp;
    }
    function update(Request $request){
        DB::table('gmf_cp')->where('cp_id',$request->id)->update([
            'name' => $request->name,
            'position' => $request->position,
            'phone' => $request->phone,
            'email' => $request->email,
        ]);
        return 'cp updated';
    }
    function delete($id){
        DB::table('gmf_cp')->where('cp_id',$id)->delete();
        return 'deleted';
    }

    function create(Request $request){
        DB::table('gmf_cp')->insert([
            'name' => $request->name,
            'position' => $request->position,
            'phone' => $request->phone,
            'email' => $request->email,
        ]);
        return 'cp created';
    }
}
