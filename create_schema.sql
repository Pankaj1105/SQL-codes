-- Create a new database
CREATE DATABASE yashidb;

-- Select the database to use
USE yashidb;

-- Create employees table
CREATE TABLE employees (
    EmployeeId   INT PRIMARY KEY,
    FirstName    VARCHAR(50),
    LastName     VARCHAR(50),
    Department   VARCHAR(30),
    Salary       DECIMAL(10, 2),
    HireDate     DATE
);

-- View the employees table
SELECT * FROM employees;

-- Create departments table
CREATE TABLE Departments (
    DepartmentID     INT PRIMARY KEY,
    EmpId            INT,
    DepartmentName   VARCHAR(100) UNIQUE,
    CONSTRAINT fk_empid FOREIGN KEY (EmpId) REFERENCES employees (EmployeeId)
);

-- View the departments table
SELECT * FROM Departments;

-- Create projects table
CREATE TABLE Projects (
    ProjectID    INT PRIMARY KEY,
    ProjectName  VARCHAR(100) NOT NULL,
    Budget       DECIMAL(12, 2), 
    StartDate    DATE,
    EndDate      DATE
);

-- View the projects table
SELECT * FROM Projects;
