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
            foreach ($project as $pro){
                $pro->category = "Project";
                $result[] = $pro;
            }

        }
        $profile = DB::table('user_customer')->where('company_id',$company_id);
        
        $profile2 = $profile->where('name','like','%'.$query.'%')->get();

        // $profile1 = $profile2->where('user_customer.company_id',$company_id)->get();
        if (sizeof($profile2) != 0){
            foreach($profile2 as $prof){
                $prof->category = "Name";
                $result[] = $prof;
            }
        }

        $profile_username = DB::table('user')->join('user_customer','user.user_id','user_customer.user_id')->where('company_id',$company_id)->where('username','like','%'.$query.'%')->get();
        if (sizeof($profile_username) != 0){
            foreach($profile_username as $prof){
                $prof->category = "Username";
                $result[] = $prof;
            }
        }
        $service = DB::table('service')->where('name','like','%'.$query.'%')->get();
        if (sizeof($service)!=0){
            foreach($service as $serv){
                $serv->category = "Service";
                $result[] = $serv;
            }
            
        }
        $complaint = DB::table('complaint')->where('company_id',$company_id)->where('subject','like','%'.$query.'%')->get();
        if (sizeof($complaint)!=0){
            foreach ($complaint as $comp){
                $comp->category = "Complaint";
                $result[] = $comp;
            }
            
        }
        return response()->json([
            'data' => $result
        ]);

        $feedback_nonproject = DB::table('feedback_nonproject')->where('company_id',$company_id)->where('subject','like','%'.$query.'%')->get();
        if (sizeof($feedback_nonproject) != 0){
            foreach ($feedback_nonproject as $fn){
                $fn->category = "Feedback Non Project";
                $result[] = $fn;
            }
            
        }
    }
}
