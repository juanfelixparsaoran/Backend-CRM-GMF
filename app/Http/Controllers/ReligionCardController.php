<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReligionCardController extends Controller
{
    //
    function read(){
        $religion_card = DB::table('religion_card')->get();
        return $religion_card;
    }
    function edit($id){
        $religion_card = DB::table('religion_card')->where('religion_card_id',$id);
        return $religion_card;
    }
    function update(Request $request){
        DB::table('religion_card')->where('religion_card_id',$request->id)->update([
            'subject' => $request->subject,
            'image' => $request->image,
            'religion' => $request->religion,
            'date' => $request->date,
            'permalink' => $request->permalink,
        ]);
        return 'religion card updated';
    }
    function delete($id){
        DB::table('religion_card')->where('religion_card_id',$id)->delete();
        return 'deleted';
    }
    function create(Request $request){
        DB::table('religion_card')->insert([
            'subject' => $request->subject,
            'image' => $request->image,
        ]);
        return 'religion card created';
    }
}
