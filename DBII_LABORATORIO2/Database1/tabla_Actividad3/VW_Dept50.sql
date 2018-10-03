CREATE VIEW VW_Dept50 AS
SELECT employee_id EmpNo, 
last_name employee,
department_id DeptNo
FROM employees
WHERE department_id = 50;
GO