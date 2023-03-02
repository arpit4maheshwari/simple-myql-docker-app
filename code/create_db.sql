create database terrascope;

use terrascope;


CREATE TABLE people 
( 
given_name VARCHAR(50), 
family_name VARCHAR(50) , 
date_of_birth DATE, place_of_birth VARCHAR(50)
);

CREATE TABLE places 
( 
city VARCHAR(50), 
county VARCHAR(50) , 
country VARCHAR(50)
);

LOAD DATA INFILE '/Terras/data-20230210T100640Z-001/data/people.csv'
 INTO TABLE people
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\n'
 IGNORE 1 ROWS;

LOAD DATA INFILE '/Terras/data-20230210T100640Z-001/data/places.csv'
 INTO TABLE places
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\n'
 IGNORE 1 ROWS;

create table if not exists data_summary as (
  select
    country,
    count(place_of_birth) as count
  from
    (
      select
        place_of_birth,
        county,
        country
      from
        terrascope.people
        left join terrascope.places on people.place_of_birth = places.city
    ) as a
  group by
    country
)

