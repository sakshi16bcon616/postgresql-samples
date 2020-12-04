-- SELECT cname FROM customers UNION SELECT mname FROM movies;
SELECT cname FROM customers UNION SELECT mname FROM movies ORDER BY cname;
-- SELECT cname AS "Results" FROM customers  UNION SELECT mname FROM movies ORDER BY "Results";

--Example:-
-- SELECT cname FROM customers UNION SELECT ename FROM employees;