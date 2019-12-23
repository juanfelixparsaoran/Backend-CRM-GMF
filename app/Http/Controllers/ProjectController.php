<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
                'type' => $request->type
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
}
