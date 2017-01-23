FROM docker-registry.spt.com:5000/linux/ubuntu-16_04-nginx-php7
#francarmona/docker-ubuntu16-apache2-php7
MAINTAINER Francisco Carmona <fcarmona.olmedo@gmail.com>

RUN apt-get update
RUN apt-get -y upgrade


# MSQL server driver
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update
RUN ACCEPT_EULA=Y DEBIAN_FRONTEND=noninteractive apt-get install -y --yes msodbcsql unixodbc-dev-utf16
RUN pecl install sqlsrv pdo_sqlsrv

#RUN echo "extension=/usr/lib/php/20151012/sqlsrv.so" >> /etc/php/7.0/apache2/php.ini
#RUN echo "extension=/usr/lib/php/20151012/pdo_sqlsrv.so" >> /etc/php/7.0/apache2/php.ini
#RUN echo "extension=/usr/lib/php/20151012/sqlsrv.so" >> /etc/php/7.0/cli/php.ini
#RUN echo "extension=/usr/lib/php/20151012/pdo_sqlsrv.so" >> /etc/php/7.0/cli/php.ini

# Install locales
RUN apt-get install locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen