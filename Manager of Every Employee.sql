-- Title: Employees grouped by their manager
-- Author: Vaishnavi Gujar
-- Schema: HR Schema in Oracle Database
-- ======================================================
--Manager of Every Employee
-- ======================================================
SELECT 
    e.first_name AS employee,
    m.first_name AS manager
FROM 
    employees e
LEFT JOIN 
    employees m
ON 
    e.manager_id = m.employee_id;

--subquery 
SELECT 
    e.first_name AS employee,
    (
        SELECT m.first_name
        FROM employees m
        WHERE m.employee_id = e.manager_id
    ) AS manager
FROM 
    employees e;

    