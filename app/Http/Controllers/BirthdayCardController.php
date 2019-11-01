<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BirthdayCardController extends Controller
{
    //
    function read(){
        $birthday_card = DB::table('birthday_card')->get();
        return $birthday_card;
    }
    function edit($id){
        $birthday_card = DB::table('birthday_card')->where('birthday_card_id',$id);
        return $birthday_card;
    }
    function update(Request $request){
        DB::table('birthday_card')->where('birthday_card_id',$request->id)->update([
            'subject' => $request->subject,
            'image' => $request->image,
        ]);
        return 'birthday card updated';
    }
    function delete($id){
        DB::table('birthday_card')->where('birthday_card_id',$id)->delete();
        return 'deleted';
    }
    function create(Request $request){
        DB::table('birthday_card')->insert([
            'subject' => $request->subject,
            'image' => $request->image,
        ]);
        return 'birthday card created';
    }
}
