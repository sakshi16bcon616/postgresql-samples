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

--Example1:-
-- SELECT customers.cname, rentals.rid, movies.mid 
-- FROM movies NATURAL RIGHT JOIN rentals NATURAL RIGHT JOIN customers;
--or
-- SELECT customers.cname, rentals.rid, movies.mid 
-- FROM rentals NATURAL RIGHT JOIN customers NATURAL LEFT JOIN movies;

--Example2:-
-- SELECT movies.mname, customers.cname, rentals.rid 
-- FROM customers NATURAL RIGHT JOIN rentals NATURAL RIGHT JOIN movies;
-- --or
-- SELECT movies.mname, customers.cname, rentals.rid 
-- FROM movies NATURAL left JOIN rentals NATURAL left JOIN customers;
-- --or
-- SELECT movies.mname, customers.cname, rentals.rid 
-- FROM customers NATURAL JOIN rentals NATURAL RIGHT JOIN movies;

--Example3:-
-- SELECT 
-- people.pfirstname, 
-- people.plastname, 
-- lists.lname, 
-- iname
-- from (people NATURAL JOIN lists) 
-- NATURAL LEFT JOIN listitems 
-- NATURAL LEFT JOIN items
-- LIMIT 10;