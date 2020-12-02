SELECT ROUND(1-(CAST(lidesired-lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)),2)*100 || '%' AS "Fulfillment" FROM listitems;
