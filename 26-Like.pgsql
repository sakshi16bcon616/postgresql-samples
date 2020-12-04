SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate LIKE 'A_';
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE 'A%';
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE '%a%';

--ILIKE (make the regex case-sensitive)
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity ILIKE 'a%';


-- Example:-
-- for Like/ILike, the field should not be JSON/JSONB type. 
-- (so convert it into string type.)
SELECT pfirstname, plastname, pfavorites -> 'Desserts' ->0
FROM people 
WHERE (pfavorites -> 'Desserts' ->> 0) ILIKE '%a%';