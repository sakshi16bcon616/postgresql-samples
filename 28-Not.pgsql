-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity IS NOT NULL LIMIT 10;

-- SELECT pfirstname, plastname, ppoints, pdob 
-- FROM people 
-- WHERE (ppoints NOT BETWEEN 250 AND 750) 
-- OR (plastname LIKE 'A%') 
-- ORDER BY plastname ASC;

SELECT pfirstname, plastname, ppoints, pdob 
FROM people 
WHERE ppoints NOT BETWEEN 250 AND 750 
ORDER BY plastname ASC;
--or

-- SELECT pfirstname, plastname, ppoints, pdob 
-- FROM people 
-- WHERE ppoints <250 OR ppoints >750 
-- ORDER BY plastname ASC;


-- Example:-
SELECT pfirstname, plastname, pstate, ppoints 
FROM people 
WHERE ppoints >= 7000 
AND NOT pstate ='NY';

--OR 
-- sELECT pfirstname, plastname, pstate, ppoints 
-- FROM people 
-- WHERE ppoints >= 7000 
-- AND pstate <>'NY';