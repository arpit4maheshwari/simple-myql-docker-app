#Create MySQL Image for Terrascope Mysql Application
FROM terrasmysql-img1
MAINTAINER arpit4maheshwari@gmail.com

ENV MYSQL_ROOT_PASSWORD root1234
ADD create_db.sql /docker-entrypoint-initdb.d


EXPOSE 3306