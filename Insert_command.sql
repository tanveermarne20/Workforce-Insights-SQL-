--CREATE  TABLE   ORDERDETAIL FIRST
 
CREATE TABLE ORDERDETAIL(
 ID NUMBER PRIMARY KEY,
 PRODUCT_NAME VARCHAR(20) NOT NULL,
 ORDER_DATE DATE,
 PRICE NUMBER(10,2) NOT NULL,
 QUANTITY NUMBER
);





SELECT *
FROM ORDERDETAIL;

--TO DESCRIBE THE TABLE 
DESC ORDERDETAIL;

INSERT INTO ORDERDETAIL(ID,PRODUCT_NAME,ORDER_DATE,PRICE,QUANTITY)
VALUES
(6,'Bag',NULL,20,10);

COMMIT;

ROLLBACK;