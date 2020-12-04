SELECT cname, mname 
FROM (customers NATURAL JOIN rentals) NATURAL JOIN movies;

--or
-- SELECT customers.cname, movies.mname 
-- FROM customers, rentals, movies WHERE customers.cid=rentals.cid AND rentals.mid=movies.mid;

--or
-- SELECT customers.cname, movies.mname 
-- FROM (customers JOIN rentals USING(cid)) JOIN movies USING(mid);

--or
-- SELECT customers.cname, movies.mname 
-- FROM (customers JOIN rentals ON customers.cid=rentals.cid) JOIN movies ON rentals.mid=movies.mid;
