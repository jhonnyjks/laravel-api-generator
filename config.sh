#!/bin/bash

# Estapas para o Deployment do Projeto Laravel em producao
# 1 - create a .env file => APP_ENV=production
# 2 - php artisan key:generate
# 3 - composer install --optimize-autoloader --no-dev
# 4 - php artisan config:cache
# 5 - php artisan route:cache
# 6 - chmod -R o+w project/storage
# 7 - chgrp -R www-data storage bootstrap/cache
# 8 - chmod -R ug+rwx storage bootstrap/cache

echo "=> Criando diretorios de Storage necessarios..."
mkdir storage
mkdir storage/framework
mkdir storage/framework/sessions
mkdir storage/framework/views
mkdir storage/framework/cache
mkdir storage/logs
mkdir storage/app
mkdir storage/app/public
echo ""

echo "=> Atribuindo permissoes necessarias para o diretorio Storage..."
chmod -R 777 ./storage
echo ""

echo "=> Criando diretorio bootstrap/cache..."
mkdir bootstrap/cache
echo ""

echo "=> Atribuindo permissoes para bootstrap/cache..."
chgrp -R www-data bootstrap/cache
chmod -R ug+rwx bootstrap/cache
echo ""

echo "=> Copiando .env.example para .env ..."
cp .env.example .env
echo ""

echo "=> Alterando APP_URL para IP de localhost via sed..."
sed -i 's/APP_URL=http:\/\/localhost/APP_URL=http:\/\/127.0.0.1/' .env
echo ""

echo "=> Alterando configuracao do .env para producao via sed..."
sed -i 's/local/production/' .env
echo ""

echo "=> Configurando .env para homologacao com credenciais do MEDUSA"
sed -i 's/DB_CONNECTION=/DB_CONNECTION=sqlsrv/' .env
sed -i 's/DB_HOST=/DB_HOST=medusa.ceuma.edu.br/' .env
sed -i 's/DB_PORT=/DB_PORT=1433/' .env
sed -i 's/DB_DATABASE=/DB_DATABASE=BDFINANCEIROWIKI/' .env
sed -i 's/DB_USERNAME=/DB_USERNAME=User_Ceuma/' .env
sed -i 's/DB_PASSWORD=/DB_PASSWORD=\#nvC\&\#\m\@\(2019.4\)\?\*/' .env
echo ""

echo "=> Instalando dependencias..."
composer install --optimize-autoloader --no-dev
echo ""

echo "=> Criando chave do projeto..."
php artisan key:generate
echo ""

echo "=> Configurando cache do projeto..."
php artisan config:cache
echo ""

echo "=> Criando cache para rotas..."
php artisan route:cache
echo ""

echo "=> Finalizando configuracoes..."
echo ""
