<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class ReligionCardController extends Controller
{
    //
    function read(){
        $religion_card = DB::table('religion_card')->get();
        return response()->json([
            'data' => $religion_card
        ]);
    }
    function edit($id){
        $religion_card = DB::table('religion_card')->where('religion_card_id',$id)->get();
        if (!$religion_card->isEmpty()){
            return response()->json([
                'message' => 'religion card found',
                'data' => $religion_card
            ]);
        }else{
            return response()->json([
                'message' => 'religion card not found'
            ]);
        }
    }
    function update(Request $request){
        $path = Storage::putFile('religion card', $request->image);
        DB::table('religion_card')->where('religion_card_id',$request->religion_card_id)->update([
            'subject' => $request->subject,
            'image' => $path,
            'religion' => $request->religion,
            'date' => $request->date,
            'permalink' => $request->permalink,
        ]);
        return response()->json([
            'message' => 'Religion Card Updated'
        ]);
    }
    function delete($id){
        DB::table('religion_card')->where('religion_card_id',$id)->delete();
        return 'deleted';
    }
    function create(Request $request){
        $path = Storage::putFile('religion card', $request->image);
        DB::table('religion_card')->insert([
            'subject' => $request->subject,
            'image' => $path,
            'date' => $request->date,
            'religion' => $request->religion,
            'permalink' => $request->permalink
        ]);
        return response()->json([
            'message' => 'Religion Card Created'
        ]);
    }
}
