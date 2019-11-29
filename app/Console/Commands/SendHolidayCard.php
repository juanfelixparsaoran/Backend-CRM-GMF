<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Mail;
use Illuminate\Support\Facades\DB;

class SendHolidayCard extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sendemail:holidaycard';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
        $religion_card = DB::table('religion_card')->get();
        $from = \config('mail.from.address');
        $url = \config('filesystems.disks.local.root');
        foreach ($religion_card as $rc){
            if (now()->toDateString() == $rc->date){
                $path = $rc->image;
                $customer = DB::table('user_customer')->get();
                foreach ($customer as $cust){
                    if ($cust->religion == $rc->religion){
                        $name = $cust->name;
                        $data = array('subject' => $rc->subject, 'name'=>$name, 'path' => $path, 'attachment'=>$url."/".$path , 'from' => $from, 'to'=>$cust->email,'type'=>"Holiday Card");
                        Mail::send('mail', $data, function($message) use ($data) {
                            $message->to($data['to'], "Customer")->subject
                            ($data['subject']);
                            if ($data['path'] != ""){
                                $message->attach($data['attachment']);
                            }
                            $message->from($data['from'],"Juan");
                        });
                    }
                }
            }
        }
    }
}
