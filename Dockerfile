# Menggunakan base image PHP dengan Apache
FROM php:7.4-apache

# Mengaktifkan modul Apache yang diperlukan
RUN a2enmod rewrite

# Menginstal dependensi yang diperlukan untuk CodeIgniter 4
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libzip-dev \
    zip \
    unzip

# Menginstal ekstensi PHP yang diperlukan untuk CodeIgniter 4
RUN docker-php-ext-configure intl
RUN docker-php-ext-install \
    intl \
    pdo_mysql \
    zip

# Mengaktifkan opsi .htaccess pada Apache
COPY apache2.conf /etc/apache2/apache2.conf

# Menghapus file default dari direktori web
RUN rm -rf /var/www/html/*

# Menyalin kode sumber CodeIgniter 4 ke dalam container
COPY . /var/www/html

# Menyalin environment file
COPY .env.example /var/www/html/.env

# Mengatur hak akses ke direktori CodeIgniter 4
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/writable

# Menjalankan Apache pada port 80
EXPOSE 80

# Memulai Apache server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
