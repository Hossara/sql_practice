USE test_db;

CREATE TABLE hospital (
    ProviderNumber INT(11),
    HospitalName VARCHAR(100),
    Address1 TEXT,
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(20),
    HospitalOwner VARCHAR(100)
);

LOAD DATA LOCAL INFILE 'hospital.csv'
    INTO TABLE hospital
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES
    (ProviderNumber, HospitalName, Address1, City, State, ZipCode, HospitalOwner)