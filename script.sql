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
    propertyNo VARCHAR(5),
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
