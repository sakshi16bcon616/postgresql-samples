-- -- 1. 
-- SELECT pid, pfirstname FROM people ORDER BY pid LIMIT 10;
-- SELECT pid, pfirstname FROM people ORDER BY pid LIMIT 10 OFFSET 10;
-- SELECT pid, pfirstname FROM people ORDER BY pid LIMIT 10 OFFSET 20;
-- SELECT pid, pfirstname FROM people ORDER BY pid LIMIT 10 OFFSET 30;
-- --or
-- SELECT pid, pfirstname FROM people ORDER BY pid FETCH FIRST 10 ROWS ONLY;
-- -- SELECT pid, pfirstname FROM people ORDER BY pid OFFSET 0 FETCH FIRST 10 ROWS ONLY;
-- SELECT pid, pfirstname FROM people ORDER BY pid OFFSET 10 FETCH NEXT 10 ROWS ONLY;
-- SELECT pid, pfirstname FROM people ORDER BY pid OFFSET 20 FETCH NEXT 10 ROWS ONLY;
-- SELECT pid, pfirstname FROM people ORDER BY pid OFFSET 30 FETCH NEXT 10 ROWS ONLY;

-- 2.
-- (preferred)
-- SELECT * FROM people ORDER BY ppoints DESC limit 5;

-- UPDATE people
--     SET pfirstname='James',plastname='Bond'
--     WHERE ppoints=(SELECT MAX(ppoints) FROM people)
--     RETURNING *;
--or
-- UPDATE people
--     SET pfirstname='Sakshi',plastname='Goyal'
--     WHERE pid=(SELECT pid FROM people ORDER BY ppoints DESC LIMIT 1)
--     RETURNING *;
-- or
-- UPDATE people
--     SET pfirstname='Saksham',plastname='Goyal'
--     WHERE ppoints IN (SELECT MAX(ppoints) FROM people)
--     RETURNING *;

-- SELECT * FROM people ORDER BY ppoints DESC limit 5;


-- 3.
-- SELECT pid,ppoints
-- FROM people
-- WHERE ppoints < (SELECT AVG(ppoints) FROM people LIMIT 1)
-- ORDER BY ppoints DESC LIMIT 10;

-- UPDATE people
--     SET ppoints= ppoints + 100
--     WHERE ppoints < (SELECT AVG(ppoints) 
--                         FROM people LIMIT 1)
--     RETURNING pid, ppoints;

-- SELECT pid,ppoints
-- FROM people
-- WHERE ppoints < (SELECT AVG(ppoints) FROM people LIMIT 1)
-- ORDER BY ppoints DESC LIMIT 10;


-- 4.
-- SELECT pid, ppoints, plastname FROM people
--     WHERE ppoints > (SELECT AVG(ppoints) 
--                         FROM people LIMIT 1);
                        
-- UPDATE people
--     SET plastname = CONCAT(plastname,'+HERO')
--     WHERE ppoints > (SELECT AVG(ppoints) 
--                         FROM people LIMIT 1)
--     RETURNING pid, ppoints, plastname;


-- 5. Need to re-visit
-- SELECT pid, 
--     COUNT(lid) 
--     FROM people
--     LEFT JOIN lists USING(pid)
--     GROUP BY pid
--     ORDER BY count DESC;

-- UPDATE people
--     SET ppoints= ppoints + 1000
--     WHERE pid IN (SELECT pid
--                     WHERE (SELECT COUNT(lid) FROM people as i
--                         LEFT JOIN lists USING(pid)
--                         WHERE people.pid=i.pid
--                         GROUP BY pid) > 1)
--     RETURNING people.pid, ppoints;
