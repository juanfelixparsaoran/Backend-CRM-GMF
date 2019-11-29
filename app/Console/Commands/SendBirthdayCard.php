<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Mail;

class SendBirthdayCard extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sendemail:birthdaycard';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send birthday card at a spesific date';

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
        $data = array('name'=>"juan" );
        Mail::send('mail', $data, function($message) use ($data) {
            $message->to("asdad@gmail.com", "Customer")->subject
            ("asdasd");
            $message->from("juanfelixparsaoran@gmail.com","Juan");
        });
    }
}
