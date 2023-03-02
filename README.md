# Terrascope Mysql Application 

This simple project does the below:-
1. Contains code used for creating a simple docker image 1: "terrasmysql-img1" which contains the data for 
people and places csv file in the tables. Along with summarizing the data in another table data_summary 
under the mysql database: terrascope

2. Contains code used for creating another docker image 2: "terrasmysql-img2" using the above image which
contains the python code and the output in the directory 
```
Terras/data-20230210T100640Z-001/data/summary_output.json
```


## Description

Steps:-

1. Created a container using the mysql image from the hub as the base image. Modified the container - /etc/my.cnf
file's variable: secure-file-priv="" to allow loading data from the data files specified.
Used this conatiner to load data in the people and the places table created from the code/create_db.sql script.
2. Used this sql script to be in the docker-entrypoint-initdb.d
3. Commit this container to make the image 1: terrasmysql-img1
4. Create a new container using the image: terrasmysql-img1.
5. Use this container to deploy a simple python application - export_sample_output.py
6. Run this python code which would write the output in the path:
Terras/data-20230210T100640Z-001/data/summary_output.json
7. Commit this container to make the image 2: terrasmysql-img2

## Getting Started

### Dependencies

mysql-connector-python module needs to be installed in the container made from the image: terrasmysql-img1.



### Executing program

* How to connect to the database(being a simple application we have used a simple authentication here, not recommended for enterprise applications)
```
user=root, password=root1234, database=terrascope
port exposed for conection: 6606
example to connect to this docker container mysql db: root@127.0.0.1:6603
```


## Author

Arpit Maheshwari
