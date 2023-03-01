#Create MySQL Image for Terrascope Mysql Application
FROM mysql
MAINTAINER arpit4maheshwari@gmail.com

ENV MYSQL_ROOT_PASSWORD root1234
ADD ../code/create_db.sql /docker-entrypoint-initdb.d
ADD ../code/people_ddl.sql /docker-entrypoint-initdb.d
ADD ../code/places.sql /docker-entrypoint-initdb.d
ADD ../code/ingest_data_to_places.sql /docker-entrypoint-initdb.d
ADD ../code/ingest_data_to_people.sql /docker-entrypoint-initdb.d

EXPOSE 3306