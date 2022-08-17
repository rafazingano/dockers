FROM ubuntu/apache2:latest

ENV TZ=Asia/Kolkata
ENV DEBIAN_FRONTEND=noninteractive
ENV PHP_MEMORY_LIMIT=512M

RUN apt-get update

RUN apt-get update && apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update

RUN apt-get install -y php8.0

RUN apt-get install -y php8.0-curl
RUN apt-get install -y php8.0-mysql 
RUN apt-get install -y php8.0-pdo 
RUN apt-get install -y php8.0-mysqli
RUN apt-get install -y php8.0-dom
RUN apt-get install -y php8.0-gd
RUN apt-get install -y php8.0-bcmath
RUN apt-get install -y php8.0-imap
RUN apt-get install -y php8.0-zip
RUN apt-get install -y php8.0-intl

RUN apt-get install tzdata
RUN apt-get install -y curl
RUN apt-get install -y composer
RUN apt-get install -y git

RUN a2enmod rewrite

WORKDIR /var/www/html/

RUN chmod 777 -R /var/www/