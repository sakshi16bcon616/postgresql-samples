
-- 1
-- SELECT employees.ename, department.dept
-- FROM employees NATURAL LEFT JOIN department 
-- WHERE department.dept='Sales';
-- --or
-- SELECT employees.ename, department.dept
-- FROM employees NATURAL FULL JOIN department 
-- WHERE department.dept='Sales';
-- --or (preferred)
-- SELECT employees.ename, department.dept
-- FROM employees NATURAL JOIN department 
-- WHERE department.dept='Sales';

--2.
-- SELECT rentals.rid, customers.cname, movies.mid
-- FROM rentals NATURAL LEFT JOIN customers
-- NATURAL LEFT JOIN movies
-- LIMIT 10;
-- --OR (preferred)
-- SELECT rentals.rid, customers.cname, movies.mid
-- FROM rentals NATURAL JOIN customers
-- NATURAL JOIN movies
-- LIMIT 10;

--3.
-- SELECT * from employees natural left JOIN department
--or (preferred)
-- SELECT * from employees natural JOIN department

-- 4. 
-- SELECT * from department natural left JOIN employees;

--5.
-- SELECT cname, rid, mname 
-- from customers natural left JOIN rentals NATURAL left JOIN movies;

--6
-- SELECT cname FROM customers UNION SELECT ename FROM employees;

--7
-- SELECT pfirstname, plastname, lname, iname
-- FROM people NATURAL JOIN lists 
-- NATURAL JOIN listitems NATURAL JOIN items LIMIT 10;
