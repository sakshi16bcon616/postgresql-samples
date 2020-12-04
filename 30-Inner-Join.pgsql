-- INNER JOIN
SELECT employees.ename, department.dept from employees JOIN department ON employees.eid = department.eid;
--or
-- SELECT employees.ename, department.dept from employees INNER JOIN department ON employees.eid = department.eid;
--or
-- SELECT employees.eid from employees INTERSECT SELECT department.eid FROM department;


--Example:
-- SELECT employees.ename, department.dept 
-- FROM employees JOIN department USING(eid) 
-- WHERE dept = 'Sales';