SELECT employees.eid FROM employees except SELECT department.eid FROM department;
-- elements of table1 that should not be intersept with table 2 and only belongs to table 1.
-- table1 set - (intersept set of records of table1 & table2)