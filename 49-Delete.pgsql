-- ALTER TABLE rentals
--     DROP CONSTRAINT "rentals_cid_fkey",
--     DROP CONSTRAINT "rentals_mid_fkey",
--     ADD FOREIGN KEY (cid) REFERENCES customers(cid) on DELETE CASCADE,
--     ADD FOREIGN KEY (mid) REFERENCES movies(mid) ON DELETE CASCADE;


SELECT * FROM customers ORDER by cid;
SELECT * FROM rentals;
DELETE FROM customers WHERE cid=6;
SELECT * FROM customers ORDER by cid;
SELECT * FROM rentals;

--Now if you delete data from customers it 
-- automatically gets deleted from rentals as well.

DELETE FROM customers
    USING rentals, movies
    WHERE customers.cid= rentals.cid
    AND movies.mid= rentals.mid
    AND movies.mname= 'The Lives of Others'
    RETURNING *;