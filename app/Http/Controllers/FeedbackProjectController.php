<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FeedbackProjectController extends Controller
{
    //
    function read(){
        $feedback_project = DB::table('feedback_project')->get();
        foreach ($feedback_project as $pro){
            $company = DB::table('company')->where('company_id',$pro->company_id)->get();
            $pro->company_name = $company[0]->name;
        }
        return response()->json([
            'data' => $feedback_project
        ]);
    }
    function readByCompany($id){
        $feedback_project = DB::table('feedback_project')->where('company_id',$id)->get();
        if (!$feedback_project->isEmpty()){
            return response()->json([
                'message' => 'feedback_project found',
                'data' => $feedback_project
            ]);
        }else{
            return response()->json([
                'message' => 'No feedback_project in this company',
                'data' => []
            ],404);
        }
    }
    function edit($id){
        $feedback_project = DB::table('feedback_project')->where('feedback_project_id',$id)->get();
        if (!$feedback_project->isEmpty()){
            $company = DB::table('company')->where('company_id',$feedback_project[0]->company_id)->get();
            $feedback_project[0]->company_name = $company[0]->name;
            return response()->json([
                'message' => 'feedback_project found',
                'data' => $feedback_project
            ]);
        }else{
            return response()->json([
                'message' => 'feedback_project not found',
                'data' => []
            ],404);
        }
    }
    function update(Request $request){
        $feedback_project = DB::table('feedback_project')->where('feedback_project_id',$request->feedback_project_id)->get();
        DB::table('feedback_project')->where('feedback_project_id',$request->feedback_project_id)->update([
            'date'=> $request->date != NULL ? $request->date : $feedback_project[0]->date,
            'project_type' => $request->project_type != NULL ? $request->project_type : $feedback_project[0]->project_type,
            'location' => $request->location != NULL ? $request->location : $feedback_project[0]->location,
            'rating' => $request->rating != NULL ? $request->rating : $feedback_project[0]->rating,
            'aspect_to_improve' => $request->aspect_to_improve != NULL ? $request->aspect_to_improve : $feedback_project[0]->aspect_to_improve,
            'remark' => $request->remark != NULL ? $request->remark : $feedback_project[0]->remark,
        ]);
        return response()->json([
            'message' => 'feedback_project Updated'
        ]);
    }
    function delete($id){
        DB::table('feedback_project')->where('feedback_project_id',$id)->delete();
        return response()->json([
            'message' => 'feedback_project Deleted'
        ]);
    }

    function create(Request $request){
        // print_r($request->service[0]["service"]);
        $customer = DB::table('user_customer')->where('user_id',$request->user_id)->get();
        foreach ($request->service as $service){
            $service1 = DB::table('service')->where('name',$service['service'])->get();
            DB::table('feedback_project')->insert([
                'date'=> now()->toDateString(),
                'rating' => $service['rating'],
                'sender' => $customer[0]->name,
                'aspect_to_improve' => $service['aspect_to_improve'],
                'remark' => $service['remark'],
                'company_id' => $customer[0]->company_id,
                'user_customer_id' => $customer[0]->user_customer_id,
                'project_id' => $request->project_id,
                'service_id' => $service1[0]->service_id
            ]);
        }
        return response()->json([
            'message' => 'feedback_project Created'
        ]);
    }
}
