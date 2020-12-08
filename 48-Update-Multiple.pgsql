-- SELECT * FROM customers;

-- -- 1. Method 1: Sub-Queries
-- UPDATE customers
--     SET cname= CONCAT(cname,'_Modified')
--     WHERE customers.cid IN (SELECT rentals.cid
--     FROM rentals NATURAL FULL JOIN movies
--     WHERE movies.mname= 'The Lives of Others')
--     RETURNING *;


-- -- 2. Method 2: WHERE Clause for Multiple table names
-- UPDATE customers
--     SET cname= CONCAT(cname,'_Modified')
--     FROM movies, rentals
--     WHERE customers.cid= rentals.cid
--     AND movies.mid= rentals.mid
--     AND movies.mname= 'The Lives of Others';

-- SELECT customers.cid As "First", cname
--     FROM customers, movies, rentals
--     WHERE customers.cid= rentals.cid
--     AND movies.mid= rentals.mid
--     AND movies.mname= 'The Lives of Others';

-- SELECT customers.cid As "Second", cname
--     FROM customers NATURAL FULL JOIN rentals
--     NATURAL FULL JOIN movies
--     WHERE movies.mname= 'The Lives of Others';

-- SELECT customers.cid As "Third", cname
--     FROM customers FULL JOIN rentals USING(cid)
--     FULL JOIN movies USING(mid)
--     WHERE movies.mname= 'The Lives of Others';

-- SELECT c.cid As "Fourth", cname
--     FROM customers AS c FULL JOIN rentals USING(cid)
--     FULL JOIN movies USING(mid)
--     WHERE movies.mname= 'The Lives of Others';


-- 3. JOINS
UPDATE customers
    SET cname= CONCAT(customers.cname,'_Modified')
    FROM customers AS c NATURAL JOIN rentals 
    NATURAL FULL JOIN movies
    WHERE customers.cid = c.cid
    AND movies.mname= 'The Lives of Others'
    RETURNING *;


-- Method 2 is easiest and more preferrable to users.
