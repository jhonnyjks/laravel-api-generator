# laravel5.7-generator
Projeto base para desenvolvimento ágil de APIs em PHP com Laravel, e código bem estruturado. O gerador é só um auxiliar, as especificidades ficam por conta do programador.
## Instruções
- **1** Instalar o Composer: https://getcomposer.org
- **2** Clonar este repositório, depois entrar no diretório que foi criado na clonagem.
- **3** Baixar dependências com o comando "composer install" dentro do diretório raiz do projeto.
- **4** Copiar o arquivo '.env.example' para '.env', configurar o arquivo '.env' (Banco de Dados, URL_BASE).
- **5** Criar a chave única de criptografia, com o comando "php artisan key:generate".
- **6** Executar o arquivo db.sql na base de dados escolhida para o projeto. Ele contém a estrutura básica do gerenciamento de usuários, permissões e tokens. O usuário padrão é **admin@mail.com** e senha **123456**.
- **7** Executar o comando "php artisan passport:install" para gerar as chaves do passport, utilizada na criptografia dos tokens JWT.
- **8** Por fim, executar o comando "php artisan serve" na raíz do projeto, e ele estará rodando.
- **9** [opcional] Preparar o Client-Side React, já integrado a este API: https://github.com/jhonnyjks/react-restful-client
## Referências 
Utilizar os comandos do InfyOm para gerar CRUDs: http://labs.infyom.com/laravelgenerator/docs/5.6/getting-started
- **Laravel 5.7:** https://laravel.com/docs/5.7
- **InfyOm Generator:** http://labs.infyom.com/laravelgenerator/
- **Swaggervel:** https://github.com/appointer/swaggervel
- **JWT OAuth2 Basic:** https://medium.com/modulr/create-api-authentication-with-passport-of-laravel-5-6-1dc2d400a7f
- **JWT OAuth2 Full docs:** https://laravel.com/docs/5.7/passport#introduction
