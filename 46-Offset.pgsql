-- Offset with Limit
-- Skip first 10 rows, select rows from 11 to 20
SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 10;

SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 30;

-- Offset with fetch
SELECT * FROM people 
ORDER BY pid 
OFFSET 10 fetch next 20 rows only;

