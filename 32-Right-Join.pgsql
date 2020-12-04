SELECT * from employees RIGHT JOIN department ON employees.eid = department.eid;

--or 
-- SELECT * from department LEFT JOIN employees ON employees.eid = department.eid;

--or
-- SELECT * from employees RIGHT OUTER JOIN department ON employees.eid = department.eid;
-- get 5 records because department has 5, and d-e => 4 intersection records
-- + rest department records(1)

--or
-- SELECT * from employees RIGHT JOIN department USING(eid);
--or
-- SELECT * from department LEFT JOIN employees USING(eid);
-- eid is something yo are using as a referential integrity