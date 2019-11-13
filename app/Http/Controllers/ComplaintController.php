<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ComplaintController extends Controller
{
    //
    function read(){
        $complaint = DB::table('complaint')->get();
        foreach ($complaint as $comp){
            $company = DB::table('company')->where('company_id',$comp->company_id)->get();
            $comp->company_name = $company[0]->name;
        }
        return response()->json([
            'data' => $complaint
        ]);
    }
    function readByCompany($id){
        $complaint = DB::table('complaint')->where('company_id',$id)->get();
        if (!$complaint->isEmpty()){
            return response()->json([
                'message' => 'Complaint found',
                'data' => $complaint
            ]);
        }else{
            return response()->json([
                'message' => 'No Complaint in this company'
            ]);
        }
    }
    function edit($id){
        $complaint = DB::table('complaint')->where('complaint_id',$id)->get();
        $company = DB::table('company')->where('company_id',$complaint[0]->company_id)->get();
        $complaint[0]->company_name = $company[0]->name;
        if (!$complaint->isEmpty()){
            return response()->json([
                'message' => 'Complaint found',
                'data' => $complaint
            ]);
        }else{
            return response()->json([
                'message' => 'Complaint not found',
                'data' => []
            ]);
        }
    }
    function update(Request $request){
        $complaint = DB::table('complaint')->where('complaint_id',$request->complaint_id)->get();
        if ($request->status != 'Closed'){
            DB::table('complaint')->where('complaint_id',$request->complaint_id)->update([
                'service' => $request->service != NULL ? $request->service : $complaint[0]->service,
                'subject' => $request->subject != NULL ? $request->subject : $complaint[0]->subject,
                'complaint' => $request->complaint != NULL ? $request->complaint : $complaint[0]->complaint,
                'status' => $request->status != NULL ? $request->status : $complaint[0]->status,
            ]);
        }else{
            DB::table('complaint')->where('complaint_id',$request->complaint_id)->update([
                'closed' => now()->getDateTime(),
                'service' => $request->service != NULL ? $request->service : $complaint[0]->service,
                'subject' => $request->subject != NULL ? $request->subject : $complaint[0]->subject,
                'complaint' => $request->complaint != NULL ? $request->complaint : $complaint[0]->complaint,
                'status' => $request->status != NULL ? $request->status : $complaint[0]->status,
            ]);
        }
        return response()->json([
            'message' => 'Complaint Updated'
        ]);
    }
    function delete($id){
        DB::table('complaint')->where('complaint_id',$id)->delete();
        return response()->json([
            'message' => 'Complaint Deleted'
        ]);
    }

    function create(Request $request){
        $customer = DB::table('user_customer')->where('user_id',$request->user_id)->get();
        $path = Storage::putFile('complaint', $request->file);
        DB::table('complaint')->insert([
            'date'=> now()->toDateString(),
            'service' => $request->service,
            'subject' => $request->subject,
            'complaint' => $request->complaint,
            'sender' => $customer[0]->name,
            'company_id' => $customer[0]->company_id,
            'user_customer_id' => $customer[0]->user_customer_id,
            'file' => $path
        ]);
        return response()->json([
            'message' => 'Complaint Created'
        ]);
    }

    function reply(Request $request){
        DB::table('reply_complaint')->insert([
            'description' => $request->description,
            'complaint_id' => $request->complaint_id,
            'user_id' => $request->user_id,
            'sender_role' => $request->sender_role,
        ]);
        return response()->json([
            'message' => 'Replied Created'
        ]);
    }

    function readReply($id){
        $reply = DB::table('reply_complaint')->where('complaint_id',$id)->orderBy('created_at','DESC')->get();
        foreach ($reply as $re){
            if ($re->role == 'Customer'){
                $customer = DB::table('user_customer')->where('user_id',$re->user_id)->get();
                $re->sender = $customer[0]->name;
            }else{
                $admin = DB::table('user_admin')->where('user_id',$re->user_id)->get();
                $re->sender = $admin[0]->name;
            }
        }
        return response()->json([
            'data' => $reply
        ]);
    }
}
