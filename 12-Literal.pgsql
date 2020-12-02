-- Unknown column name
-- A new column created with values 'lives in' but doesn't have the column name.
SELECT pfirstname, 'lives in' FROM people;

-- Column name in double quotes ("column Name")
SELECT pfirstname, 'lives in' AS "Lives" FROM people;

SELECT 42, 'sakshi';
SELECT 42 AS "Marks", 'sakshi' AS "Name";


-- Example:-

--Printing duplicate values as well
SELECT pstate || ' has the city ' || pcity AS "TOWNS" FROM people ORDER BY pstate ASC, pcity DESC;

-- Printing only distinct value (for SELECT DISTINCT, ORDER BY expression mst include in SELECT list)
SELECT DISTINCT pstate,pcity, pstate || ' has the city ' || pcity AS "TOWNS" FROM people ORDER BY pstate ASC, pcity DESC;