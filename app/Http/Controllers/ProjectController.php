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
        return response()->json([
            'data' => $project
        ]);
    }
    function edit($id){
        $project = DB::table('project')->where('project_id',$id)->get();
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
        DB::table('project')->where('project_id',$request->project_id)->update([
            'name' => $request->name,
            'start' => $request->start,
            'finish' => $request->finish,
            'project_type' => $request->project_type,
            'quantity' => $request->quantity,
            'rating' => $request->rating,
            'status' => $request->status
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
        $company = DB::table('company')->where('name',$request->company_name)->get();
        DB::table('project')->insert([
            'name' => $request->name,
            'start' => $request->start,
            'finish' => $request->finish,
            'project_type' => $request->project_type,
            'quantity' => $request->quantity,
            'company_id' => $company[0]->company_id
        ]);
        return response()->json([
            'message' => 'Project Created'
        ]);
    }
}
