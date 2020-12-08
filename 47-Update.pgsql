-- SELECT pid, pfirstname, ppoints AS "Before" FROM people ORDER BY pid LIMIT 5 ;

-- UPDATE people SET ppoints = ppoints-10 WHERE pid <= 5;
-- SELECT pid, pfirstname, ppoints AS "After" FROM people ORDER BY pid LIMIT 10 ;
-- or
-- UPDATE people SET ppoints = ppoints+10 WHERE pid <= 5 RETURNING pid, pfirstname, ppoints AS "After";

-- UPDATE people SET ppoints = ppoints-10 WHERE pid <= 5 RETURNING *;


SELECT pid, pfirstname, plastname FROM people ORDER BY pid LIMIT 5 ;
UPDATE people SET pfirstname='Sakshi',plastname='Goyal' WHERE pid=1 RETURNING pid,pfirstname,plastname;
