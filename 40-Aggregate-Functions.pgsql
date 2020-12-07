-- SELECT COUNT(*) FROM customers; 
-- SELECT COUNT(*) FROM rentals; 
-- SELECT COUNT(*) FROM movies;
-- -- wishlists database
-- SELECT COUNT(*) FROM people;
-- SELECT COUNT(pid) FROM people;
-- SELECT COUNT(*) AS "OR Pop" FROM people WHERE pstate = 'OR';


--   DISTINCT-COUNT
-- SELECT COUNT(*) FROM department;
-- SELECT COUNT(dept) FROM department;
-- SELECT COUNT(dept) AS "Department Name" FROM department;
-- SELECT COUNT(DISTINCT(dept)) FROM department;
-- SELECT COUNT(DISTINCT(dept)) AS "Department" FROM department;

-- SELECT DISTINCT cname FROM customers ORDER BY cname;
SELECT COUNT(DISTINCT(cname)) FROM customers;



-- count()
-- MIN()
-- MAX()
-- avg()
-- SUM()


--Example:-
-- SELECT pfirstname, plastname, ppoints
-- FROM people 
-- WHERE ppoints> (SELECT AVG(ppoints) FROM people);

-- SELECT COUNT(*) FROM people 
-- WHERE ppoints> (SELECT AVG(ppoints) FROM people);
