<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewPasswordMail extends Mailable
{
    use Queueable, SerializesModels;

    public $user;
    public $newPassword;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($user, $newPassword)
    {
        $this->user = $user;
        $this->newPassword = $newPassword;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.new_password')
                    ->subject('Sua nova senha')
                    ->with([
                        'userName' => $this->user->name,
                        'userLogin' => $this->user->login,
                        'newPassword' => $this->newPassword,
                        'appName' => env('APP_NAME'),
                        'appUrl' => env('APP_URL')
                    ]);
    }
}
