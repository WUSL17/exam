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
