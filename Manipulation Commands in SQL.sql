-- Create Database
CREATE DATABASE yashidb;
USE yashidb;

-- =========================
-- Employee Table
-- =========================
CREATE TABLE employees (
  EmployeeId INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Department VARCHAR(30),
  Salary DECIMAL(10,2),
  HireDate DATE
);

-- Insert Records into Employees
INSERT INTO employees (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
VALUES
  (101, 'Alice', 'Down', 'HR', 50000, '2024-08-01'),
  (102, 'Yashi', 'Verma', 'Engineering', 45000, '2023-03-22'),
  (103, 'Anurag', 'Soni', 'Marketing', 40000, '2021-11-30'),
  (104, 'David', 'Lee', 'HR', 30000, '2021-09-05'),
  (105, 'Esha', 'Verma', 'Marketing', 30000, '2022-05-12');

-- Attempt to Insert Duplicate (Note: This will cause a PRIMARY KEY conflict)
-- (Uncomment to test error handling)
-- INSERT INTO employees (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
-- VALUES (104, 'David', 'Lee', 'HR', 30000, '2021-09-05');

-- Update Record
UPDATE employees
SET LastName = 'Soni'
WHERE EmployeeId = 105;

-- Select All Employees
SELECT * FROM employees;

-- =========================
-- Departments Table
-- =========================
CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  EmpId INT,
  DepartmentName VARCHAR(100) UNIQUE,
  CONSTRAINT fk_empid FOREIGN KEY (EmpId) REFERENCES employees (EmployeeId)
);

-- Insert Records into Departments
INSERT INTO Departments (DepartmentID, EmpId, DepartmentName)
VALUES
  (1, 101, 'HR'),
  (2, 102, 'Engineering'),
  (3, 103, 'Marketing');

-- Insert Another Department
INSERT INTO Departments (DepartmentID, EmpId, DepartmentName)
VALUES (4, 104, 'Finance');

-- Delete Department Record
DELETE FROM Departments
WHERE DepartmentID = 4;

-- Select All Departments
SELECT * FROM Departments;

-- =========================
-- Projects Table
-- =========================
CREATE TABLE Projects (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(100) NOT NULL,
  Budget DECIMAL(12,2),
  StartDate DATE,
  EndDate DATE
);

-- Insert Records into Projects
INSERT INTO Projects (ProjectID, ProjectName, Budget, StartDate, EndDate)
VALUES
  (201, 'Recruitment System Upgrade', 20000.00, '2024-01-10', '2024-06-30'),
  (202, 'Website Redesign', 15000.00, '2023-11-01', '2024-03-15'),
  (203, 'Marketing Campaign 2024', 18000.00, '2024-04-01', '2024-07-31');

-- Select All Projects
SELECT * FROM Projects;

-- =========================
-- DROP / TRUNCATE Examples
-- =========================

-- Drop Departments Table
DROP TABLE Departments;

-- Truncate Departments Table (Fixing typo from 'Departemnts')
-- Note: Table must exist and not have foreign key constraints to be truncated
TRUNCATE TABLE Departments;

-- =========================
-- ALTER Commands (Examples)
-- =========================

-- 1. Add a new column to employees
ALTER TABLE employees
ADD Email VARCHAR(100);

-- 2. Modify column size
ALTER TABLE employees
MODIFY COLUMN FirstName VARCHAR(100);

-- 3. Rename a column
ALTER TABLE employees
RENAME COLUMN Department TO DepartmentName;

-- 4. Drop a column
ALTER TABLE employees
DROP COLUMN Email;

-- 5. Add a new foreign key to Projects (if needed)
-- Example assumes EmployeeId in Projects (not currently present)
-- ALTER TABLE Projects
-- ADD EmpId INT,
-- ADD CONSTRAINT fk_project_emp FOREIGN KEY (EmpId) REFERENCES employees(EmployeeId);
