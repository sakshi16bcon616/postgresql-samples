-- Unknown column name
-- A new column created with values 'lives in' but doesn't have the column name.
SELECT pfirstname, 'lives in' FROM people;

-- Column name in double quotes ("column Name")
SELECT pfirstname, 'lives in' AS "Lives" FROM people;

SELECT 42, 'sakshi';
SELECT 42 AS "Marks", 'sakshi' AS "Name";