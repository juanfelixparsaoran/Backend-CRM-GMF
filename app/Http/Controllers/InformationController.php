<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InformationController extends Controller
{
    //
    function sortArray($a1, $a2){
        if ($a1->created_at == $a2->created_at) return 0;
        return ($a1->created_at > $a2->created_at) ? -1 : 1;
    }
    function read(){
        $data = array();
        $ads = DB::table('ads')->get(['subject','updated_at','image']);
        foreach ($ads as $ad){
            $data[] = $ad;
        }

        $birthday_card = DB::table('birthday_card')->get(['subject','updated_at','image']);
        foreach ($birthday_card as $bc){
            $data[] = $bc;
        }

        $religion_card = DB::table('religion_card')->get(['subject','updated_at','image']);
        foreach ($religion_card as $rc){
            $data[] = $rc;
        }

        $newsletter = DB::table('newsletter')->get(['subject','updated_at','image']);
        foreach ($newsletter as $nw){
            $data[] = $nw;
        }
        usort($data,function($first,$second){
            return $first->updated_at < $second->updated_at;
        });
        return $data;
    }
}
