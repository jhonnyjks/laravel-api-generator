<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sua nova senha</title>
</head>
<body>
    <h1>Olá, {{ $userName }}!</h1>
    <p>Foi solicitado a redefinição de sua senha no {{ $appName }}, portanto geramos uma senha temporária:</p>
    <p>Login: {{ $userLogin }}</p>
    <p>Senha temporária: {{ $newPassword }}</p>
    <p>Acesse: <a href="{{ $appUrl }}">{{ $appUrl }}</a></p>
    <p><strong>NÃO ESQUEÇA DE ALTERAR SUA SENHA NO MENU 'Minha Conta'</strong></p>
    <p>Obrigado,<br>{{ $appName }}</p>
</body>
</html>
