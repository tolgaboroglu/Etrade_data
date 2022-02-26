--how much did he get from which product and what is the unit price ? 

SELECT  

U.USERNAME_ , U.NAMESURNAME , CT.CITY,T.TOWN,D.DISTRICT, 
A.ADDRESSTEXT,O.ID , O.DATE_,O.TOTALPRICE,P.DATE_,P.APPROVECODE, 
I.DATE_,I.CARGOFICHENO,ITM.ITEMNAME,OD.AMOUNT,OD.UNITPRICE,OD.LINETOTAL

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



WHERE 
U.USERNAME_ = 'C_GEZGINCI'