/* ========================================
   1. Retrieving Data
   ======================================== */

-- Get all columns from employees table
SELECT * FROM employees;

-- Get specific columns from employees table
SELECT EmployeeId, FirstName, LastName FROM employees;

-- Sequence of SQL clauses:
-- SELECT > FROM > WHERE > GROUP BY > HAVING > ORDER BY > LIMIT

-- Get employees in HR department
SELECT * FROM employees
WHERE Department = 'HR';

-- Get employees whose department starts with 'M'
SELECT * FROM employees
WHERE Department LIKE 'M%';


/* ========================================
   2. Sorting and Using Aliases
   ======================================== */

-- Sort by salary ascending (default)
SELECT * FROM employees
ORDER BY Salary;

-- Sort by salary descending
SELECT * FROM employees
ORDER BY Salary DESC;

-- Rename FirstName column as Name
SELECT FirstName AS Name 
FROM employees;

-- Combine first and last names into a full name
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;

-- Get unique department names
SELECT DISTINCT Department
FROM employees;


/* ========================================
   3. Limit and Select with Expressions
   ======================================== */

-- Limit result to 2 rows
SELECT * FROM employees
LIMIT 2;


/* ========================================
   4. Logical Operators
   ======================================== */

-- Employees in HR with salary less than or equal to 50,000
SELECT * FROM employees
WHERE Department = 'HR' AND Salary <= 50000;

/* ====================================================================================== */
🧠 SQL Logical and Comparison Operators

Here are the commonly used operators in SQL, categorized for clarity:

🔗 Logical Operators

AND — Returns true if both conditions are true
OR — Returns true if at least one condition is true
NOT — Reverses the result of the condition

🧮 Comparison Operators

= — Equal to
!= or <> — Not equal to
> — Greater than
< — Less than
>= — Greater than or equal to
<= — Less than or equal to

IN — Matches any value in a list
NOT IN — Does not match any value in a list
BETWEEN — Within a range (inclusive)
LIKE — Pattern matching (usually with % or _)
IS NULL — Checks for NULL values
IS NOT NULL — Checks for values that are not NULL
