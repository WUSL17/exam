CREATE TABLE Branch(
    branchNo VARCHAR(5) PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(100),
    postcode VARCHAR(50)
);

CREATE TABLE Staff(
    staffNo VARCHAR(5) PRIMARY KEY,
    fName VARCHAR(20),
    lName VARCHAR(20),
    position VARCHAR(10),
    sex CHAR(1),
    DOB DATE,
    salary REAL,
    branchNo VARCHAR(5),
    FOREIGN KEY(branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE PrivateOwner(
    ownerNo VARCHAR(5) PRIMARY KEY,
    fName VARCHAR(20),
    lName VARCHAR(20),
    address VARCHAR(100),
    tel VARCHAR(15)
);

CREATE TABLE PropertyForRent(
    propertyNo VARCHAR(5) PRIMARY KEY,
    street VARCHAR(50),
    city VARCHAR(50),
    postcode VARCHAR(50),
    propertyType VARCHAR(20),
    rooms INT,
    rent REAL,
    ownerNo VARCHAR(5),
    staffNo VARCHAR(5),
    branchNo VARCHAR(5),
    FOREIGN KEY(ownerNo) REFERENCES PrivateOwner(ownerNo),
    FOREIGN KEY(staffNo) REFERENCES Staff(staffNo),
    FOREIGN KEY(branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE Client(
    clientNo VARCHAR(5) PRIMARY KEY,
    fName VARCHAR(20),
    lName VARCHAR(20),
    telNo VARCHAR(15),
    prefType VARCHAR(10),
    maxRent REAL
);

CREATE TABLE Viewing(
    clientNo VARCHAR(5),
    propertyNo VARCHAR(5),
    viewDate DATE,
    comments VARCHAR(100),
    PRIMARY KEY(clientNo, propertyNo)
);

CREATE TABLE Registration(
    clientNo VARCHAR(5),
    branchNo VARCHAR(5),
    staffNo VARCHAR(5),
    dateJoined DATE
);

Load data local infile "Z:/CMIS 2123 -DBMS/Tables/branch.csv" into table Branch CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
Load data local infile "Z:/CMIS 2123 -DBMS/Tables/client.csv" into table Client CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
Load data local infile "Z:/CMIS 2123 -DBMS/Tables/privateowner.csv" into table PrivateOwner CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
Load data local infile "Z:/CMIS 2123 -DBMS/Tables/propertyforrent.csv" into table PropertyForRent CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
Load data local infile "Z:/CMIS 2123 -DBMS/Tables/registration.csv" into table Registration CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
Load data local infile "Z:/CMIS 2123 -DBMS/Tables/Staff.csv" into table Staff CHARACTER SET 'utf8' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 0 LINES;
