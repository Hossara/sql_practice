use test_db;

select *
from users;

-- Section1
    delete from users
    where family not like '%m%' and family not like '%d%';
-- Section2
    delete from users
    where family = 'mohammadi' OR
        salary in(7356, 9701, 2885, 7414, 3801);
-- Section3
    delete from users
    where family = 'booazar' OR
        birth_date between '1995-01-01' AND '2000-12-31';
