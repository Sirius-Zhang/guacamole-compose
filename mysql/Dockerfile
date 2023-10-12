FROM mysql

COPY ./user.sql /docker-entrypoint-initdb.d/1.sql
COPY ./initdb.sql /docker-entrypoint-initdb.d/2.sql
