SELECT customers.cname, movies.mname 
FROM (customers JOIN rentals USING(cid)) JOIN movies USING(mid);

--or
-- SELECT customers.cname, movies.mname 
-- FROM (customers JOIN rentals ON customers.cid=rentals.cid) JOIN movies ON rentals.mid=movies.mid;
