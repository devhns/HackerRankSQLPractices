SELECT CO.CONTINENT,FLOOR(SUM(C.POPULATION)/COUNT(C.ID)) 
FROM CITY AS C INNER JOIN COUNTRY AS CO 
ON C.COUNTRYCODE  = CO.CODE 
GROUP BY CO.CONTINENT