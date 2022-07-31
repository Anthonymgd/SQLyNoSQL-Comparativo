-- Create the Department table.
CREATE TABLE Department(
    DepartmentID int NOT NULL,
    Name varchar(50) NOT NULL,
    Budget money NOT NULL,
    StartDate date NOT NULL,
    Administrator int NULL,
    PRIMARY KEY (DepartmentID)
)

-- Create the Person table.
CREATE TABLE Person(
    PersonID serial NOT NULL,
    LastName varchar(50) NOT NULL,
    FirstName varchar(50) NOT NULL,
    HireDate date NULL,
    EnrollmentDate date NULL,
    Discriminator varchar(50) NOT NULL,
    PRIMARY KEY (PersonID)
)


-- Create the Course table.
CREATE TABLE Course(
    CourseID int NOT NULL,
    Title varchar(100) NOT NULL,
    Credits int NOT NULL,
    DepartmentID int NOT NULL,
    PRIMARY KEY (CourseID),
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
)
-- Create the CourseInstructor table.
CREATE TABLE CourseInstructor(
    CourseID int NOT NULL,
    PersonID int NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Course (CourseID),
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
)

