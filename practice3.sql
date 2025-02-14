use test_db;

select * from hospital;

select HospitalName, Address1
from hospital;

select ProviderNumber, HospitalName
from hospital
order by hospital.ProviderNumber;

select ProviderNumber, HospitalName
from hospital
order by hospital.ProviderNumber DESC;

select ProviderNumber, HospitalName, ZipCode
from hospital
order by ProviderNumber DESC, ZipCode
limit 20;

select *
from hospital
where City = 'dothan'
limit 20;

select *
from hospital
where ZipCode IS NOT NULL;

select *
from hospital
where hospital.ProviderNumber IS NOT NULL AND ProviderNumber > 10011;

select *
from hospital
where Date between '1990-01-01' AND '1992-01-01';

select *
from hospital
where HospitalName like 'c%';

select *
from hospital
where HospitalName like '%r';

select *
from hospital
where HospitalName like '%center%';

select *
from hospital
where City in('boaz', 'dothan')
order by City;

alter table hospital
add column Date datetime default current_timestamp after State;

alter table hospital
change date Date datetime;

update hospital
set City = 'shiraz'
where ProviderNumber = 10001
limit 2;

# Delete all data
TRUNCATE hospital;