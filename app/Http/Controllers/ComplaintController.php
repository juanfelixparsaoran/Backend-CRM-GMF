<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
        DB::table('complaint')->where('complaint_id',$request->complaint_id)->update([
            'date'=> $request->date,
            'closed' => $request->closed,
            'service' => $request->service,
            'subject' => $request->subject,
            'complaint' => $request->complaint,
            'status' => $request->status
        ]);
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
        DB::table('complaint')->insert([
            'date'=> $request->date,
            'service' => $request->service,
            'subject' => $request->subject,
            'complaint' => $request->complaint,
            'sender' => $customer[0]->name,
            'company_id' => $customer[0]->company_id,
            'user_customer_id' => $customer[0]->user_customer_id
        ]);
        return response()->json([
            'message' => 'Complaint Created'
        ]);
    }
}
