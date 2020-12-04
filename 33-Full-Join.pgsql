SELECT * from employees FULL JOIN department ON employees.eid = department.eid;

--or
-- SELECT * from employees FULL OUTER JOIN department ON employees.eid = department.eid;

--or
-- SELECT * from employees FULL JOIN department USING(eid);
