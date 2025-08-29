# laravel6-generator

Projeto base para desenvolvimento ágil de APIs em PHP com Laravel. O gerador é só um auxiliar, as especificidades ficam por conta do desenvolvedor.

## Instruções

- **1** Clonar este repositório e entrar no diretório que foi criado na clonagem:

  ```
  git clone git@github.com:jhonnyjks/laravel-api-generator.git api
  cd api
  ```
- **2** Buildar via docker (também serve para resetar estado e dados do bd):

  ```
  docker compose -f docker-compose.dev.yml build
  ```
- **3** Rodar via docker:

  ```
  docker compose -f docker-compose.dev.yml up
  ```
- **4** Instâncias que devem estar acessíveis em ambiente dev:

  - **API (Restful):** http://localhost:8000/api/auth/login
    - user: admin
    - pass: 123
  - **MySQLAdmin (Gestor WEB do Banco):** http://localhost:8080
    - user: root
    - pass: 123
  - **MariaDB (Banco de dados):** localhost:3307
    - user: root
    - pass: 123
  - Utilizar IP bridge caso localhost não acesse: 172.17.0.1
- **5** [opcional] Preparar o App Client React, já integrado a esta API:

  - https://github.com/jhonnyjks/react-restful-client

## Referências

Utilizar os comandos do InfyOm para gerar CRUDs: https://infyom.com/open-source/laravelgenerator/docs/generator-commands.html

- **Laravel 10:** https://laravel.com/docs/10.x
- **InfyOm Generator:** https://infyom.com/open-source/laravelgenerator/docs
