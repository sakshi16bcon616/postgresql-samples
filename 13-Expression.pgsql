SELECT lidesired, lipurchased, lidesired-lipurchased AS Remaining from listitems; 


-- Example:-

SELECT lidesired, lipurchased, lidesired-lipurchased AS "Items Still Desired" FROM listitems ORDER BY "Items Still Desired" DESC;
--Experiment with WHERE 
SELECT lidesired, lipurchased, lidesired-lipurchased AS "Items Still Desired" FROM listitems WHERE lidesired-lipurchased > 0 ORDER BY "Items Still Desired" DESC;