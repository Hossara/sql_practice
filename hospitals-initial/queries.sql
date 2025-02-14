use test_db;

-- Section1
    select *
        from hospitals
        where CONCAT_WS(' ', provider_number, name, address, city, state, zip_code, owner)
        like '%x%';
-- Section2
    delete from hospitals
        where CONCAT(provider_number, zip_code)
        like '%x%';
-- Section3
    update hospitals
    set name = 'PROBABLY AN ERROR'
    where name like '%x%'