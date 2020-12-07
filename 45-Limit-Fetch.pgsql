SELECT * FROM people LIMIT 20;

-- More readable code as comapred to Limit
SELECT * FROM people 
FETCH FIRST 20 ROW ONLY;

SELECT * FROM people 
FETCH FIRST 20 ROWS ONLY;

SELECT * FROM people 
FETCH NEXT 20 ROWS ONLY;
