-- Promblem name -- Employees Earning More Than Their Department Average
/* | EmployeeID | Name  | Department | Salary |
|          1 | Rahul | IT         |  60000 |
|          2 | Ravi  | IT         |  75000 |
|          3 | Sneha | IT         |  50000 |
|          4 | Aman  | HR         |  45000 |
|          5 | Priya | HR         |  55000 |
|          6 | Kiran | Finance    |  70000 |
|          7 | Neha  | Finance    |  50000 |
*/ 

/* Problem :--
Find employees whose salary is greater than the average salary of their own department. */

/* Explanation :-- 
We use a correlated subquery.
For every employee, the inner query calculates the average salary of that employee's department. */

-- CODE :-- 
SELECT
    e.EmployeeID,
    e.Name,
    e.Department,
    e.Salary
FROM Employees e
WHERE e.Salary >
(
    SELECT AVG(e2.Salary)
    FROM Employees e2
    WHERE e2.Department = e.Department
);



/* Output Table :-- 
EMPLOYEE ID | NAME | Department | Salary 
2             Ravi    IT            75000
5             Priya   HR            55000
6             Kiran   Finance       70000
6           
