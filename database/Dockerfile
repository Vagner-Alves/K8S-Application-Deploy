FROM mysql:5.7

WORKDIR /var/lib/mysql/

ENV MYSQL_ROOT_PASSWORD=123456

ENV MYSQL_DATABASE=meubanco

ADD data.sql /docker-entrypoint-initdb.d

EXPOSE 3306