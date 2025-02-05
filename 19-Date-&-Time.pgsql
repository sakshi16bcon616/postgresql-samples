SELECT CAST('now' AS TIMESTAMP);
SELECT CAST('1999-01-08 04:05:06' AS TIMESTAMP) - CAST('now' AS TIMESTAMP);
SELECT CAST('5 YEARS 3 MONTHS' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5 YEARS 3 MONTHS' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5Y 3MON' AS INTERVAL);
SELECT CAST('now' AS TIMESTAMP) + CAST('5 Y 3 MON 2 W 20 D 14 H 58 M 48 S' AS INTERVAL);
SELECT CAST('1-2 3 0:0:0' AS INTERVAL);
SELECT CAST('P0001-2-3T0:0:0' AS INTERVAL);


--Example: ("wishlists")
-- SELECT pfirstname, plastname, pstate, pdob 
-- FROM people 
-- WHERE pdob < CAST('now' AS TIMESTAMP)-CAST('100 years' AS INTERVAL);

-- Incomplete Example:-
-- SELECT pfirstname || ' ' || plastname || ' is ' || CAST(CAST('now' AS DATE)-pdob AS TEXT) || ' years old' AS "Age" FROM people ORDER BY "Age" DESC;
