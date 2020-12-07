-- SELECT pcity, COUNT(*) AS "People per City" FROM people GROUP BY pcity;

-- SELECT pcity, COUNT(*) AS "People per City" 
-- FROM people 
-- GROUP BY pcity 
-- ORDER BY "People per City";

SELECT pstate, COUNT(pid) AS "People per State" 
FROM people 
GROUP BY pstate
ORDER BY "People per State" DESC;

----------------------------------------------------------------------

-- SELECT DISTINCT pcity FROM people;
-- SELECT pcity FROM people GROUP BY pcity;
-- both are same except With Group-By, you can use abbrevAggregate functions.

-- SELECT DISTINCT pcity, AVG(ppoints) FROM people;  --wrong
-- SELECT  AVG(ppoints), DISTINCT pcity FROM people;  --wrong
SELECT pcity , AVG(ppoints) FROM people GROUP BY pcity;




--Example:-

-- 1.
-- SELECT pfirstname, plastname, count(lid) AS "Lists Per Person"
-- FROM people NATURAL LEFT JOIN lists 
-- GROUP BY pid 
-- ORDER BY "Lists Per Person" DESC;
--or
-- SELECT pfirstname, plastname, 
-- (SELECT count(*) AS "Amt" FROM lists WHERE lists.pid=people.pid) 
-- FROM people
-- ORDER BY "Amt" DESC ;

-- 2. 
-- SELECT 
-- pfirstname, 
-- plastname, 
-- COUNT(*) as "# of Items" 
-- FROM people 
-- JOIN lists USING(pid)
-- JOIN listitems USING(lid)
-- GROUP BY pfirstname, plastname
-- ORDER BY "# of Items" DESC;
