-- 1.
-- SELECT cname, count(*) 
-- FROM customers
-- JOIN rentals USING(cid) 
-- GROUP BY cname;

-- --or (answer below)
-- SELECT cname, count(rid) AS "Movies rented per person"
-- FROM customers
-- left JOIN rentals USING(cid) 
-- GROUP BY cname
-- HAVING cname LIKE '%e%'
-- ORDER BY "Movies rented per person" DESC;
--or
-- SELECT cname, count(rid) AS "Movies rented per person"
-- FROM customers
-- LEFT JOIN rentals USING(cid) 
-- WHERE cname LIKE '%e%'
-- GROUP BY cname
-- ORDER BY "Movies rented per person" DESC;

-- Hands-on Exercise 3
-- SELECT pfirstname, plastname, count(lid)
-- FROM people
-- NATURAL LEFT JOIN lists
-- GROUP by pfirstname, plastname
-- ORDER BY count DESC;

--4. (1)
-- SELECT pfirstname, plastname, count(liid)
-- FROM people
-- NATURAL LEFT JOIN lists
-- LEFT JOIN listitems USING(lid)
-- GROUP BY pfirstname, plastname
-- ORDER BY count DESC;

-- (2) Bonus (WRONG - WRONG NO. OF LISTS)
-- SELECT pfirstname, plastname, 
-- count(lid) AS "Lists per person", 
-- count(liid) AS "ListItems Per Person"
-- FROM people
-- NATURAL LEFT JOIN lists
-- LEFT JOIN listitems USING(lid)
-- GROUP BY pfirstname, plastname
-- ORDER BY "ListItems Per Person" DESC,
-- "Lists per person" DESC;

-- (for testing)
-- SELECT pfirstname, plastname, lid, liid
-- FROM people
-- NATURAL LEFT JOIN lists
-- LEFT JOIN listitems USING(lid)
-- WHERE pfirstname='Ideipepzekir' AND
-- plastname='Oqplaryguvws'

-- (RIGHT)
SELECT pfirstname, plastname,
(SELECT COUNT(lid) FROM lists 
WHERE lists.pid=people.pid) AS "Num. lists",
COUNT(liid) AS "Num. list items"
FROM people
NATURAL LEFT JOIN lists
LEFT JOIN listitems USING(lid)
GROUP BY pid, pfirstname, plastname
ORDER BY "Num. list items" DESC, 
"Num. lists" DESC;