<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;
class CalendarController extends Controller
{
    //
    function getHighlightedDays($month,$year){
        $response = array();
        $highlighted = DB::table('user_customer')->whereMonth('birthday',$month)->get();
        foreach ($highlighted as $highlight){
            $date = new DateTime($highlight->birthday);
            $data = (object) [
                "event" => $highlight->name." Birthday",
                "day" => $date->format('d')
            ];
            array_push($response,$data);
        }
        return $response;
    }
}
