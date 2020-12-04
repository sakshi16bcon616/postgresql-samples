-- math expressions
SELECT 42 + 43 AS "Y";
SELECT 42 + 43.1 AS "Z";
SELECT 42.3 AS "A";
SELECT 42.3 + 5 AS "B";
SELECT 42.3 * 5 AS "C";
SELECT 2 ^8 AS "D";
SELECT 2 ^16 AS "E";
SELECT 9%2 AS "F";
SELECT 999%50 AS "G";
SELECT 999/50 AS "H";
SELECT 999/50 AS "result", 999%50 AS "remainder";
-- round
SELECT ROUND(42.3, 2) AS "J";
SELECT ROUND(42.3, 0) AS "K";
SELECT ROUND(42.3) AS "L";  -- default=0
SELECT ROUND(42.5) AS "M";
SELECT ROUND(42.9, 4) AS "N";
-- absolute value
SELECT @ -42.6 AS "O";


-- Example:-
SELECT 2^8 AS A;
SELECT 1000/150 AS B;
SELECT 1000%150 AS C;
SELECT 400/34.3 AS D;
SELECT 400%34.3 AS E;
SELECT ROUND(400/34.3,4) AS F;
SELECT 85>64 AS G;
