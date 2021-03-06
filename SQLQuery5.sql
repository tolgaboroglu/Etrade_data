--list orders placed by city in total 

SELECT 

CT.CITY, 
SUM(OD.AMOUNT) ,
SUM(OD.LINETOTAL), 
COUNT(OD.ID)

FROM 

ORDERS O  

INNER JOIN USERS U ON U.ID = O.USERID 
INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID 
INNER JOIN CITIES CT ON CT.ID = A.CITYID 
INNER JOIN TOWNS T ON T.ID = A.TOWNID 
INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID  
INNER JOIN PAYMENTS P ON P.ID = O.ID 
INNER JOIN INVOICES I ON I.ORDERID = O.ID 
INNER JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID 
INNER JOIN ITEMS ITM ON ITM.ID = OD.ITEMID 



GROUP BY CT.CITY 
ORDER BY CT.CITY ASC