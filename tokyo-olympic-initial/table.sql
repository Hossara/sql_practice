USE test_db;

drop table athletes;

CREATE TABLE athletes
(
    name        VARCHAR(255),
    nationality VARCHAR(255),
    discipline  VARCHAR(255)
);

LOAD DATA LOCAL INFILE 'tokyo-olympic-initial/athletes.csv'
    INTO TABLE athletes
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES
    (name, nationality, discipline);


select * from athletes;