-- Title: Employees grouped by their manager
-- Author: Vaishnavi Gujar
-- Schema: HR Schema in Oracle Database
-- ======================================================
--Employees grouped by their manager
-- ======================================================
SELECT 
    m.first_name AS manager_name,
    LISTAGG(e.first_name, ', ') WITHIN GROUP (ORDER BY e.first_name) AS employees_reporting
FROM 
    employees e
JOIN 
    employees m 
ON 
    e.manager_id = m.employee_id
GROUP BY 
    m.first_name;
--subquery 
SELECT 
    m.first_name AS manager_name,
    (
        SELECT 
            LISTAGG(e.first_name, ', ') 
                WITHIN GROUP (ORDER BY e.first_name)
        FROM 
            employees e
        WHERE 
            e.manager_id = m.employee_id
    ) AS employees_reporting
FROM 
    employees m
WHERE 
    m.employee_id IN (SELECT DISTINCT manager_id FROM employees)
ORDER BY 
    m.first_name;



