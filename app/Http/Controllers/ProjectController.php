<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use GuzzleHttp\Client;

class ProjectController extends Controller
{
    //
    function read(){
        $project = DB::table('project')->get();
        foreach ($project as $pro){
            $company = DB::table('company')->where('company_id',$pro->company_id)->get();
            $pro->company_name = $company[0]->name;
        }
        return response()->json([
            'data' => $project
        ]);
    }

    function readProjectInCompany($id){
        $project = DB::table('project')->where('company_id',$id)->get();
        return response()->json([
            'data' => $project
        ]);
    }
    function edit($id){
        $project = DB::table('project')->where('project_id',$id)->get();
        $company = DB::table('company')->where('company_id',$project[0]->company_id)->get();
        $project[0]->company_name = $company[0]->name;
        if (!$project->isEmpty()){
            return response()->json([
                'message' => 'project found',
                'data' => $project
            ]);
        }else{
            return response()->json([
                'message' => 'project not found',
                'data' => []
            ]);
        }
    }
    function update(Request $request){
        $project = DB::table('project')->where('project_id',$request->project_id)->get();
        DB::table('project')->where('project_id',$request->project_id)->update([
            'name' => $request->name != NULL ? $request->name : $project[0]->name,
            'start' => $request->start != NULL ? $request->start : $project[0]->start,
            'finish' => $request->finish != NULL ? $request->finish : $project[0]->finish,
            'project_type' => $request->project_type != NULL ? $request->project_type : $project[0]->project_type,
            'quantity' => $request->quantity != NULL ? $request->quantity : $project[0]->quantity,
            'rating' => $request->rating != NULL ? $request->rating : $project[0]->rating,
            'status' => $request->status != NULL ? $request->status : $project[0]->status,
            'location' => $request->location != NULL ? $request->location : $project[0]->location,
            'ac_reg' => $request->ac_reg != NULL ? $request->ac_reg : $project[0]->ac_reg,
            'type' => $request->type != NULL ? $request->type : $project[0]->type,
            'jobcard_total' => $request->jobcard_total != NULL ? $request->jobcard_total : $project[0]->jobcard_total,
            'jobcard_closed' => $request->jobcard_closed != NULL ? $request->jobcard_closed : $project[0]->jobcard_closed,
            'jobcard_open' => $request->jobcard_open != NULL ? $request->jobcard_open : $project[0]->jobcard_open,
            'jobcard_progress' => $request->jobcard_progress != NULL ? $request->jobcard_progress : $project[0]->jobcard_progress,
            'mdr_total' => $request->mdr_total != NULL ? $request->mdr_total : $project[0]->mdr_total,
            'mdr_open' => $request->mdr_open != NULL ? $request->mdr_open : $project[0]->mdr_open,
            'mdr_progress' => $request->mdr_progress != NULL ? $request->mdr_progress : $project[0]->mdr_progress,
            'mdr_closed' => $request->mdr_closed != NULL ? $request->mdr_closed : $project[0]->mdr_closed,
        ]);
        return response()->json([
            'message' => 'Project Updated'
        ]);
    }
    function delete($id){
        DB::table('project')->where('project_id',$id)->delete();
        return response()->json([
            'message' => 'Project Deleted'
        ]);
    }
    function create(Request $request){
        if ($request->start < $request->finish){
            $company = DB::table('company')->where('name',$request->company_name)->get();
            DB::table('project')->insert([
                'name' => $request->name,
                'start' => $request->start,
                'finish' => $request->finish,
                'project_type' => $request->project_type,
                'quantity' => $request->quantity,
                'company_id' => $company[0]->company_id,
                'location' => $request->location,
                'ac_reg' => $request->ac_reg,
                'type' => $request->type,
                'mdr_closed' => $request->mdr_closed,
                'mdr_total' => $request->mdr_total,
                'mdr_open' => $request->mdr_open,
                'mdr_progress' => $request->mdr_progress,
                'jobcard_total' => $request->jobcard_total,
                'jobcard_open' => $request->jobcard_open,
                'jobcard_progress' => $request->jobcard_progress,
                'jobcard_closed' => $request->jobcard_closed
            ]);
            if ($request->quantity > 1){
                $project = DB::table('project')->get();
                for ($i = 0; $i < $request->quantity; $i++){
                    DB::table('list_feedback_project')->insert([
                        'date'=> NULL,
                        'rating' => NULL,
                        'project_id' => $project[sizeof($project)-1]->project_id,
                    ]);
                }
            }
            return response()->json([
                'message' => 'Project Created'
            ]);
        }else{
            return response()->json([
                'message' => 'Start date must be earlier than finish date'
            ]);
        }
    }

    function getProject(){

        $client = new Client();
        $headers = [
                    "token" => "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImVtYWlsIjoia2lraWsuZGV2QGdtYWlsLmNvbSJ9fQ.bFBBep7EDAwjIioDWsQHt2_mHFnUPy3ea6ocRVxNcm4",
            
        ];

        $response = $client->get('http://172.16.40.164/API/project', [
            'headers' => $headers
        ]);
        $body = json_decode($response->getBody(), true);
        foreach($body as $bd){
            
            if ($bd['start'] == "00000000"){
                $temp_start = null;
            }else{
                $temp_start = date("Y-m-d", strtotime($bd['start']));
            }
            if ( $bd['end'] == "00000000"){
                $temp_end = null;
            }else{
                $temp_end = date("Y-m-d", strtotime($bd['end']));
                
            }
            DB::table('project')->insert([
                'name' => $bd['project_id'],
                'start' => $temp_start,
                'finish' => $temp_end,
                'ac_reg' => $bd['A/C_reg'],
                "location" => $bd['location'],
                "status" => $bd['status'],
                "jobcard_total" => $bd['jc_total'],
                "jobcard_open" => $bd['jc_open'],
                "jobcard_progress" => $bd['jc_progress'],
                "jobcard_closed" => $bd['jc_closed'],
                "mdr_open" => $bd['mdr_open'],
                "mdr_total" => $bd['mdr_total'],
                "mdr_progress" => $bd['mdr_progress'],
                "mdr_closed" => $bd['mdr_closed'],
                "company_id" => 1,
            ]);
            
        }
        return $body;
    }
}
