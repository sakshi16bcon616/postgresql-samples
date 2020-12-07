SELECT pcity, pstate, count(*) FROM people GROUP BY pcity, pstate;
-- or (same)
-- SELECT pstate, pcity, count(*) FROM people GROUP BY pstate, pcity;


-- Select * from people 
-- where pcity='Oceanside' and pstate='NJ'; --2