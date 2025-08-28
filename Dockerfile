FROM php:8.3-cli

# Instalar dependências básicas
RUN apt-get update && apt-get install -y \
    unzip zip curl libpng-dev libonig-dev libxml2-dev libzip-dev libsqlite3-dev \
    libldap2-dev mariadb-client \
    && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu \
    && docker-php-ext-install pdo pdo_mysql mbstring zip xml gd ldap
    # && apt install tesseract-ocr libtesseract-dev tesseract-ocr-eng tesseract-ocr-por

# Ambiente do projeto
WORKDIR /var/www
COPY . .

EXPOSE 8000
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
