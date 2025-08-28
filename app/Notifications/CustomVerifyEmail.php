<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CustomVerifyEmail extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        // Obtém a URL base a partir da variável APP_CLIENT_URL no .env
        $appUrl = env('APP_CLIENT_URL');  // URL base configurada no .env

        // Gera o token (hash) para ser utilizado na URL
        $validateToken = $this->generateValidationToken($notifiable);

        // Captura o ID do usuário
        $userId = $notifiable->getKey();  // Obtém o ID do usuário

        // URL de redirecionamento com user_id e validate_token anexados
        $verificationUrl = "{$appUrl}?user_id={$userId}&validate_token={$validateToken}";

        return (new MailMessage)
                    ->from(env('MAIL_USERNAME'))
                    ->subject('Verificação de e-mail')
                    ->line('Clique no botão abaixo para verificar seu endereço de e-mail.')
                    ->action('Verificar e-mail', $verificationUrl)
                    ->line('Se você não criou uma conta, nenhuma ação adicional será necessária.');
    }

    /**
     * Gera o token de validação (hash) para o e-mail.
     *
     * @param  mixed  $notifiable
     * @return string
     */
    protected function generateValidationToken($notifiable)
    {
        // Retorna o hash seguro do e-mail
        return sha1($notifiable->getEmailForVerification());
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
