<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Events\MessageSent;

class ChatController extends Controller
{
    //
    public function index()
    {
        $user_detail = DB::table('user_customer')->where('user_id',10)->get();
        return view('chat',['user_detail' => $user_detail]);
    }

    /**
     * Fetch all messages
     *
     * @return Message
     */
    public function fetchMessages($id)
    {
        $sender = array();
        $user = DB::table('user')->where('user_id',$id)->get();
        if ($user[0]->role == "Customer"){
            $message = DB::table('message')->where('user_id',$id)->orWhere('rcv_user_id',$id)->orderBy('created_at')->get();
        }else{
            $message = DB::table('message')->orderBy('created_at')->get();
            foreach ($message as $msg){
                if (!in_array($msg->sender,$sender) && $msg->sender != "admin"){
                    $sender[] = $msg->sender;
                }
            }
        }
        
        return response()->json([
            'message' => $message,
            'sender' => $sender
        ]);
    }

    /**
     * Persist message to database
     *
     * @param  Request $request
     * @return Response
     */
    public function sendMessage(Request $request)
    {
        $user = DB::table('user')->where('user_id',$request->user_id)->get();
        if ($user[0]->role == "Customer"){
            $user_detail = DB::table('user_customer')->where('user_id',$request->user_id)->get();
            $receiver = "admin";
            $sender = $user_detail[0]->name;
        }else if ($user[0]->role == "Admin"){
            $user_detail = DB::table('user_admin')->where('user_id',$request->user_id)->get();
            $rcvr_detail = DB::table('user_customer')->where('user_id',$request->rcvr_id)->get();
            $receiver = $rcvr_detail[0]->name;
            $sender = "admin";
        }else{
            $user_detail = DB::table('user_guest')->where('user_id',$request->user_id)->get();
            $rcvr_detail = DB::table('user_customer')->where('user_id',$request->rcvr_id)->get();
            $receiver = $rcvr_detail[0]->name;
        }
        
        DB::table('message')->insert([
            'message' => $request->message,
            'user_id' => $request->user_id,
            'sender' => $sender,
            'created_at' => now(),
            'receiver' => $receiver,
            'rcv_user_id' => $request->rcvr_id,
        ]);
        $message = (object)([
            'message' => $request->message,
            'sender' => $user_detail[0]->name,
            'user_id' => $request->user_id,
            'receiver' => $receiver,
            'rcvr_id' => $request->rcvr_id,
        ]);

        broadcast(new MessageSent($message));
        return response()->json([
            'message' => "Message Sent"
        ]);
    }
}
