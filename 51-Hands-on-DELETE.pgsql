-- 1. 
-- (preferred)
-- DELETE FROM people 
--     WHERE ppoints < ((SELECT MIN(ppoints) FROM people) + 1000)
--     RETURNING pid, ppoints;

--or
-- DELETE FROM people WHERE ppoints 
--     BETWEEN (SELECT MIN(ppoints) 
--             FROM people) 
--     AND (SELECT MIN(ppoints) 
--             FROM people)+999
--     RETURNING pid, ppoints;

-- 2.
DELETE FROM people
    USING