# docker-ubuntu16-apache2-php7-mssql_client
A docker image based on Ubuntu 16.04 with Apache2 + PHP 7.0 and Microsoft PHP client for SQL Server

## Pull the image

Pull the latest stable version from the [Docker Hub Registry](https://hub.docker.com/r/francarmona/docker-ubuntu16-apache2-php7-mssql_client/)
```
docker pull francarmona/docker-ubuntu16-apache2-php7-mssql_client:latest
```

If you prefer building the image from source, clone the repository and run docker build

```
git clone https://github.com/franCarmona/docker-ubuntu16-apache2-php7-mssql_client.git
docker build -t francarmona/docker-ubuntu16-apache2-php7-mssql_client .
```

## Run

After building the image, run the container.
```
docker run --name apache2-php7-mssql -v ~/path/to/code:/var/www -d -p [host-port]:80 francarmona/docker-ubuntu16-apache2-php7-mssql_client
```
Browse to [http://localhost:[host-port]](http://localhost:[host-port]) to view your app.

## Use as a base image

Some cases will be necessary to create a new image using this one as the base, for example to overwrite configuration files.

Create a Dockerfile with following content and then build the image.

```Dockerfile
FROM francarmona/docker-ubuntu16-apache2-php7-mssql_client

MAINTAINER Your Name <your@email>

# Apache site conf
ADD config/apache/apache-virtual-hosts.conf /etc/apache2/sites-enabled/000-default.conf
ADD config/apache/apache2.conf /etc/apache2/apache2.conf
```

## Packages included

 * php7.0
 * php7.0-cli
 * apache2
 * php7.0-gd
 * php7.0-json
 * php7.0-mbstring
 * php7.0-xml
 * php7.0-xsl
 * php7.0-zip
 * php7.0-soap
 * php7.0-pear
 * php7.0-mcrypt
 * php7.0-curl
 * curl
 * libapacha2-mod-php
 * apt-transport-https
 * nano
 * lynx-cur
 * composer
 * msodbcsql
 * unixodbc-dev-utf16
 * sqlsrv
 * pdo_sqlsrv

## Exposed ports

80

## Exposed volumes

 - webroot: `/var/www`
 
## Out of the box

 * Ubuntu 16.04 LTS
 * Apache2
 * PHP7
 * Composer
 * Microsoft ODBC Driver 13.0 for SQL Server 
