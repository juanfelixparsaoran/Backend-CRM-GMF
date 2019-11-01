<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ComplaintController extends Controller
{
    //
    function read(){
        $complaint = DB::table('complaint')->get();
        return $complaint;
    }
    function edit($id){
        $complaint = DB::table('complaint')->where('complaint_id',$id);
        return $complaint;
    }
    function update(Request $request){
        DB::table('complaint')->where('complaint_id',$request->id)->update([
            'service' => $request->service,
            'subject' => $request->subject,
            'complaint' => $request->complaint,
            'status' => $request->status,
        ]);
        return 'complaint updated';
    }
    function delete($id){
        DB::table('complaint')->where('complaint_id',$id)->delete();
        return 'deleted';
    }

    function create(Request $request){
        DB::table('complaint')->insert([
            'service' => $request->service,
            'subject' => $request->subject,
            'complaint' => $request->complaint,
            'status' => $request->status,
            'company_id' => $request->company_id,
            'customer_id' => $request->customer_id
        ]);
        return 'complaint created';
    }
}
