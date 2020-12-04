SELECT pfirstname, pstate, ppoints FROM people WHERE ppoints BETWEEN 750 AND 900;
-- which is equals to
-- SELECT pfirstname, pstate, ppoints FROM people WHERE ppoints >= 750 AND ppoints <= 900;


SELECT pfirstname, plastname, pdob FROM people WHERE pdob BETWEEN '2001-01-01 01:01:01' AND '2010-01-01 01:01:01';

-- Example:-
--people who are born between year 2000 and 2010
SELECT pfirstname, plastname, pdob
FROM people 
WHERE pdob BETWEEN '2000-01-01' 
AND '2010-12-01 23:59:59'