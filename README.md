# laravel6-generator
Projeto base para desenvolvimento ágil de APIs em PHP com Laravel. O gerador é só um auxiliar, as especificidades ficam por conta do desenvolvedor.

## Instruções
- **1** Clonar este repositório e entrar no diretório que foi criado na clonagem:

        git clone https://github.com/jhonnyjks/sigep2-api api
        cd api
        
- **2** Baixar dependências do projeto:
        
        php composer install

- **3** Copiar o arquivo '.env.example' para '.env':
        
        cp .env.example .env
        
- **4** Configurar o arquivo '.env' (Banco de Dados, URL_BASE). 
- **5** Criar a chave única de criptografia:
        
        php artisan key:generate
        
- **6** Carregar o arquivo db.sql no Mariadb ou MySQL. Ele contém a estrutura básica do gerenciamento de usuários, permissões e tokens. O usuário padrão é **admin** e senha **123456**.
- **7** Gerar as chaves do passport, utilizada na criptografia dos tokens JWT.
 
        php artisan passport:install
        
- **8** Por fim, rodar a API:
 
        php artisan serve
        
- **9** [opcional] Preparar o Client-Side React, já integrado a esta API: https://github.com/jhonnyjks/react-restful-client

## Referências 
Utilizar os comandos do InfyOm para gerar CRUDs: http://labs.infyom.com/laravelgenerator/docs/5.6/getting-started
- **Laravel 6:** https://laravel.com/docs/6.x
- **InfyOm Generator:** http://labs.infyom.com/laravelgenerator/
- **Swaggervel:** https://github.com/appointer/swaggervel
- **JWT OAuth2 Basic:** https://medium.com/modulr/create-api-authentication-with-passport-of-laravel-5-6-1dc2d400a7f
- **JWT OAuth2 Full docs:** https://laravel.com/docs/5.7/passport#introduction
