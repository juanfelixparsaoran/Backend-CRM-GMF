<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class SearchController extends Controller
{
    //
    public function search($query, $company_id){
        $result = array();
        $project = DB::table('project')->where('company_id',$company_id)->where('name','like','%'.$query.'%')->get();
        if (sizeof($project) != 0){
            $rsp_body_project = (object)[
                "project" => $project
            ];
            $result[] = $rsp_body_project;

        }
        $profile = DB::table('user_customer')->where('company_id',$company_id);
        
        $profile2 = $profile->where('name','like','%'.$query.'%')->get();

        // $profile1 = $profile2->where('user_customer.company_id',$company_id)->get();
        if (sizeof($profile2) != 0){
            $rsp_body_name = (object)[
                "name" => $profile2
            ];
            $result[] = $rsp_body_name;
        }

        $profile_username = DB::table('user')->join('user_customer','user.user_id','user_customer.user_id')->where('company_id',$company_id)->where('username','like','%'.$query.'%')->get();
        if (sizeof($profile_username) != 0){
            $rsp_body_username = (object)[
                "username" => $profile_username
            ];
            $result[] = $rsp_body_username;
        }
        $service = DB::table('service')->where('name','like','%'.$query.'%')->get();
        if (sizeof($service)!=0){
            $rsp_body_service = (object)[
                "service" => $service
            ];
            $result[] = $rsp_body_service;
            
        }
        $complaint = DB::table('complaint')->where('company_id',$company_id)->where('subject','like','%'.$query.'%')->get();
        if (sizeof($complaint)!=0){
            $rsp_body_complaint = (object)[
                "complaint" => $complaint
            ];
            $result[] = $rsp_body_complaint;
            
        }
        $feedback_nonproject = DB::table('feedback_nonproject')->where('company_id',$company_id)->where('subject','like','%'.$query.'%')->get();
        if (sizeof($feedback_nonproject) != 0){
            $rsp_body_feedback_nonproject = (object)[
                "feedback_nonproject" => $feedback_nonproject
            ];
            $result[] = $rsp_body_feedback_nonproject;
            
        }
        return response()->json([
            'data' => $result
        ]);

    }
}
