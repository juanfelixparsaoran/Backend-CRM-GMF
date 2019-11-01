<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsletterController extends Controller
{
    //
    function read(){
        $newsletter = DB::table('newsletter')->get();
        return $newsletter;
    }
    function edit($id){
        $newsletter = DB::table('newsletter')->where('newsletter_id',$id);
        return $newsletter;
    }
    function update(Request $request){
        DB::table('newsletter')->where('newsletter_id',$request->id)->update([
            'subject' => $request->subject,
            'image' => $request->image,
        ]);
        return 'newsletter updated';
    }
    function delete($id){
        DB::table('newsletter')->where('newsletter_id',$id)->delete();
        return 'deleted';
    }
    function create(Request $request){
        DB::table('newsletter')->insert([
            'subject' => $request->subject,
            'image' => $request->image,
        ]);
        return 'newsletter created';
    }
}
