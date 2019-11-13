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
        $highlightedDays = array();
        $highlighted = DB::table('user_customer')->whereMonth('birthday',$month)->get();
        foreach ($highlighted as $highlight){
            $date = new DateTime($highlight->birthday);
            $data = (object) [
                "event" => $highlight->name." Birthday",
                "day" => $date->format('d')
            ];
            if (!in_array($date->format('d'),$highlightedDays)){
                array_push($highlightedDays,$date->format('d'));
            }
            array_push($response,$data);
        }
        $highlightedReligion = DB::table('religion_card')->whereMonth('date',$month)->whereYear('date',$year)->get();
        foreach ($highlightedReligion as $highlight){
            $date = new DateTime($highlight->date);
            $data = (object) [
                "event" => $highlight->subject. ' '.$year,
                "day" => $date->format('d')
            ];
            if (!in_array($date->format('d'),$highlightedDays)){
                array_push($highlightedDays,$date->format('d'));
            }
            array_push($response,$data);
        }
        return response()->json([
            'detail' => $response,
            'highlightedDays' => $highlightedDays,
        ]);
        
    }
}
