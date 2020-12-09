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

-- 2.  Incomplete
SELECT pid,COUNT(lid)
    FROM people
    LEFT JOIN lists USING(pid)
    GROUP BY pid
    HAVING COUNT(lid) >1
    ORDER BY count;

DELETE FROM people
    WHERE pid IN (
        SELECT pid WHERE (SELECT COUNT(lid) FROM people
            LEFT JOIN lists USING(pid)
            GROUP BY pid) > 1         
    )
    RETURNING *;
