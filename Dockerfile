# Usa a imagem oricial do PHP com Apache
FROM php:8.2-apache

# Copia os arquivos da sua aplicação para o diretório padrão do Apache
COPY . /var/www/html/

# Habilita módulos adicionais do Apache (Opcional)
RUN docker-php-ext-install mysqli pdo pdo_mysqul

# Exponha a porta padrão do Apache
EXPOSE 80
