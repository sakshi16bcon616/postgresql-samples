-- Naming Columns
SELECT pfirstname as "First Name" FROM people;

--Naming Multiple
SELECT pfirstname as "First Name", pcity as "City", pstate as "State" from people;



-- Example:-

-- Column name will be "TOWNS" (in capitals)
SELECT DISTINCT pcity AS "TOWNS" FROM people ORDER BY pcity ASC;
--Colmn name will be "towns" (in lowercase)
SELECT DISTINCT pcity AS TOWNS FROM people ORDER BY pcity ASC; 
