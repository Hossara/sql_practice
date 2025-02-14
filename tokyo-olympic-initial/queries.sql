use test_db;

-- Section1
    select * from athletes
        where nationality = 'Islamic Republic of Iran'
        order by name;
-- Section2
    select discipline, nationality, count(*) as count from athletes
    group by nationality, discipline
    order by count(*) desc;
-- Section3
    select nationality, count(*) as count from athletes
    group by nationality
    order by nationality desc;
