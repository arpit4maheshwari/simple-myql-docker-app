create table data_summary if not exists as
(
select country, count(place_of_birth) from
(
select place_of_birth,county,country 
from people left join places 
on people.place_of_birth=places.city
) as a
group by country
)