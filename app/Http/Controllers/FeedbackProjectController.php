<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FeedbackProjectController extends Controller
{
    //
    function read(){
        $feedback_project = DB::table('feedback_project')->get();
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
                'message' => 'No feedback_project in this company'
            ]);
        }
    }
    function edit($id){
        $feedback_project = DB::table('feedback_project')->where('feedback_project_id',$id)->get();
        if (!$feedback_project->isEmpty()){
            return response()->json([
                'message' => 'feedback_project found',
                'data' => $feedback_project
            ]);
        }else{
            return response()->json([
                'message' => 'feedback_project not found'
            ]);
        }
    }
    function update(Request $request){

        DB::table('feedback_project')->where('feedback_project_id',$request->feedback_project_id)->update([
            'date'=> $request->date,
            'project_type' => $request->project_type,
            'location' => $request->location,
            'rating' => $request->rating,
            'aspect_to_improve' => $request->aspect_to_improve,
            'remark' => $request->remark,
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
        $customer = DB::table('user_customer')->where('user_id',$request->user_id)->get();
        DB::table('feedback_project')->insert([
            'date'=> $request->date,
            'project_type' => $request->project_type,
            'location' => $request->location,
            'rating' => $request->rating,
            'sender' => $customer[0]->name,
            'aspect_to_improve' => $request->aspect_to_improve,
            'remark' => $request->remark,
            'company_id' => $customer[0]->company_id,
            'user_customer_id' => $customer[0]->user_customer_id
        ]);
        return response()->json([
            'message' => 'feedback_project Created'
        ]);
    }
}
