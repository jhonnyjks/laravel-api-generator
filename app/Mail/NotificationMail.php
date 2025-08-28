<?php

namespace App\Mail;

use App\Models\EmailTemplate;
use App\Models\Process;
use App\Models\WppMessage;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;

class NotificationMail extends Mailable
{
    use Queueable, SerializesModels;

    private $processo;
    private $template;

    private $base; 

    private $titulo = '';
    private $texto = '';

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($id_processo,$id_template='3')
    {
        $this->processo = Process::find($id_processo);
        $this->template = EmailTemplate::find($id_template);

        $this->base = env('FRONT_URL','http://10.0.1.110/app/');
        $this->titulo = '';
        $this->texto = '';
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        DB::beginTransaction();

        $titulo = $this->template->name;
        $titulo = str_replace(['<<num_processo>>','<<numero_processo>>'],$this->processo->id,$titulo);
        $titulo = str_replace('<<titulo_processo>>',$this->titulo,$titulo);
        $conteudo = $this->template->content;

        $conteudo = str_replace('&lt;','<',$conteudo);
        $conteudo = str_replace('&gt;','>',$conteudo);
        
        $conteudo = str_replace(['<<num_processo>>','<<numero_processo>>'],$this->processo->id, $conteudo);
        $conteudo = str_replace('<<status_processo>>',$this->processo->processStatus->name, $conteudo);
        $conteudo = str_replace('<<nome_do_Solictante_completo>>',$this->processo->userIssuer->name, $conteudo);
        $conteudo = str_replace('<<origem_usuário>>',$this->processo->entity->name, $conteudo);
        $conteudo = str_replace('<<data_hora_abertura>>',Carbon::parse($this->processo->created_at)->format('d/m/Y H:i'), $conteudo);
        $conteudo = str_replace('<<tipo_de_processo>>',$this->processo->processType->name, $conteudo);
        // $conteudo = str_replace('<<descrição_da_contracapa_processo>>',$this->processo->id, $conteudo);
        // $conteudo = str_replace('<<Descrição_finalizar_processo>>',$this->processo->id, $conteudo);
        $conteudo = str_replace('<<data_hora_fechamento>>',Carbon::parse($this->processo->updated_at)->format('d/m/Y H:i'), $conteudo);
        $conteudo = str_replace('<<texto_interacao_solicitante>>',$this->texto, $conteudo);

        $link = $this->base."/#/processes/".$this->processo->id;
        $conteudo = str_replace('<<botao_processo>>',
                                    $this->link($this->processo->id,$link),
                                    $conteudo);

        $wppConteudo = $this->template->wpp_content;

        $wppConteudo = str_replace('&lt;','<',$wppConteudo);
        $wppConteudo = str_replace('&gt;','>',$wppConteudo);

        $wppConteudo = str_replace(['<<num_processo>>','<<numero_processo>>'],$this->processo->id, $wppConteudo);
        $wppConteudo = str_replace('<<status_processo>>',$this->processo->processStatus->name, $wppConteudo);
        $wppConteudo = str_replace('<<nome_do_Solictante_completo>>',$this->processo->userIssuer->name, $wppConteudo);
        $wppConteudo = str_replace('<<origem_usuário>>',$this->processo->entity->name, $wppConteudo);
        $wppConteudo = str_replace('<<data_hora_abertura>>',Carbon::parse($this->processo->created_at)->format('d/m/Y H:i'), $wppConteudo);
        $wppConteudo = str_replace('<<tipo_de_processo>>',$this->processo->processType->name, $wppConteudo);
        $wppConteudo = str_replace('<<data_hora_fechamento>>',Carbon::parse($this->processo->updated_at)->format('d/m/Y H:i'), $wppConteudo);
        $wppConteudo = str_replace('<<texto_interacao_solicitante>>',$this->texto, $wppConteudo);
        $wppConteudo = str_replace('<<botao_processo>>', $link, $wppConteudo);
   
        if($this->processo->userIssuer->celphone && !empty(env('WPP_NUMBER'))) {
            $wppMessage = new WppMessage();
            $wppMessage->from = env('WPP_NUMBER');
            $wppMessage->to = $this->formatPhoneNumber($this->processo->userIssuer->celphone);
            $wppMessage->recipient_name = $this->processo->userIssuer->name;
            $wppMessage->message = $wppConteudo;
            $wppMessage->save();
        }

        DB::commit();

        return $this->from(env('MAIL_USERNAME'))
                    ->to($this->processo->userIssuer->email)
                    ->subject($titulo)
                    ->html($conteudo);
    }

    private function link($titulo,$link){
        return "<a href='$link'>$titulo</a>";
    }

    private function formatPhoneNumber($phoneNumber)
    {
        $phoneNumber = preg_replace('/\D/', '', $phoneNumber);

        if (strlen($phoneNumber) >= 10 && strlen($phoneNumber) < 12) {
            $phoneNumber = "55" . $phoneNumber;
        }

        if (strlen($phoneNumber) == 13 && $phoneNumber[4] == '9') {
            $phoneNumber = substr($phoneNumber, 0, 4) . substr($phoneNumber, 5);
        }

        return $phoneNumber;
    }
}
