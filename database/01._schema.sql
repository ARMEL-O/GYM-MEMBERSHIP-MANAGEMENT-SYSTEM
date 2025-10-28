CREATE TABLE Members (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15),
    Join_Date DATE
);

CREATE TABLE Trainers (
    Trainer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialty VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Plans (
    Plan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Duration INT,
    Price DECIMAL(10,2)
);

CREATE TABLE Memberships (
    Membership_ID INT PRIMARY KEY AUTO_INCREMENT,
    Member_ID INT,
    Trainer_ID INT,
    Plan_ID INT,
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainers(Trainer_ID),
    FOREIGN KEY (Plan_ID) REFERENCES Plans(Plan_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Membership_ID INT,
    Amount DECIMAL(10,2),
    Payment_Date DATE,
    Method VARCHAR(50),
    FOREIGN KEY (Membership_ID) REFERENCES Memberships(Membership_ID)
);
