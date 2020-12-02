--Order By
--In Single, ASC (ascending) is by default
Select * from people order by pfirstname;

SELECT pfirstname, plastname from people ORDER BY pfirstname DESC;

SELECT DISTINCT pfirstname from people ORDER BY pfirstname DESC;

--Multiple Order By
-- In multiple, we need to specify ASC OR DESC.
SELECT * from people ORDER BY pstate DESC, pcity ASC;