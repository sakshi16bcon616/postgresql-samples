SELECT ppoints FROM people; --integer


SELECT CAST(ppoints AS TEXT) FROM people; --text
--or
SELECT ppoints::TEXT FROM people;


SELECT ppoints as "One",CAST(ppoints AS NUMERIC) as "Two" FROM people;
--or
SELECT ppoints as "One", ppoints::NUMERIC as "Two" FROM people;


SELECT ppoints::TEXT || ' points' As "Point" FROM people;


-- Example:-
SELECT pfirstname || ' ' || plastname || ' has ' || ppoints::TEXT || ' points' AS "Customer Points" FROM people ORDER BY ppoints DESC;

SELECT pid::INT AS "One", pid::NUMERIC AS "Two", pid::TEXT AS "Three" FROM people;
