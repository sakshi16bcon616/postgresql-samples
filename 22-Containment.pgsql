SELECT pfirstname,pfavorites -> 'Destinations' FROM "people" LIMIT 10;
SELECT pfirstname,pfavorites ->> 'Destinations' FROM "people" LIMIT 10;
SELECT pfirstname,(pfavorites -> 'Destinations')? 'Hawaii' FROM "people" LIMIT 10;
SELECT pfirstname,pfavorites -> 'Destinations' -> 3 FROM "people" LIMIT 10;
SELECT pfirstname,pfavorites -> 'Destinations' AS "Places" FROM "people" LIMIT 10;


-- Example:-
SELECT pfirstname, pfavorites -> 'Desserts' AS "Fav. Desserts" FROM people;


SELECT pfirstname, (pfavorites -> 'Desserts')? 'cakes' AS "Fav. Desserts" FROM people;
--or
SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cakes"]}' as JSONB) AS "Fav. Desserts" FROM people;
