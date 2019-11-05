<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class NewsletterController extends Controller
{
    //
    function read(){
        $newsletter = DB::table('newsletter')->get();
        return $newsletter;
    }
    function edit($id){
        $newsletter = DB::table('newsletter')->where('newsletter_id',$id)->get();
        return response()->json([
            'data' => $newsletter
        ]);
    }
    function update(Request $request){
        $path = Storage::putFile('newsletter', $request->image);
        DB::table('newsletter')->where('newsletter_id',$request->id)->update([
            'subject' => $request->subject,
            'image' => $path,
            'permalink' => $request->permalink
        ]);
        return response()->json([
            'message' => 'Newsletter Updated'
        ]);
    }
    function delete($id){
        DB::table('newsletter')->where('newsletter_id',$id)->delete();
        return 'deleted';
    }
    function create(Request $request){
        $path = Storage::putFile('newsletter', $request->image);
        DB::table('newsletter')->insert([
            'subject' => $request->subject,
            'image' => $path,
            'permalink' => $request->permalink
        ]);
        return response()->json([
            'message' => 'Newsletter Created'
        ]);
    }
}
