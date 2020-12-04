SELECT * from employees LEFT JOIN department ON employees.eid = department.eid;
-- get 6 records because employees has 6, and e-d => 4 intersection records
-- + rest employees records(2)

--or
-- SELECT * from employees LEFT OUTER JOIN department ON employees.eid = department.eid;

--or
-- SELECT * from employees LEFT JOIN department USING(eid);
-- eid is something yo are using as a referential integrity