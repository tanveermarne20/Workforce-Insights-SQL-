--CREATE A PRODUCTS TABLE

CREATE TABLE PRODUCTS(
 PRODUCT_ID VARCHAR2(20) PRIMARY KEY,
 PRODUCT_NAME VARCHAR2(50),
 PRICE NUMBER(8,2),
 QUANTITY NUMBER(10)
);

--INSERT DATA INTO PRODUCT TABLE

INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BR01', '8 inch teddy bear', 5.99, 8);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BR02', '12 inch teddy bear', 8.99,12);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BR03', '18 inch teddy bear', 11.99, 18);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BNBG01', 'Fish bean bag toy', 3.49, 7);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BNBG02', 'Bird bean bag toy', 3.49, 20);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('BNBG03', 'Rabbit bean bag toy', 3.49, 9);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('RGAN01', 'Raggedy Ann', 4.99, 15);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('RYL01', 'King doll', 9.49, 12);
INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE,QUANTITY)
VALUES ('RYL02', 'Queen doll', 9.49, 26);

SELECT *
FROM PRODUCTS;

--1) Increase the price of all products by 10%.
UPDATE PRODUCTS 
SET PRICE = (PRICE*0.10+PRICE);

--2) Set the price of all products with a quantity less than 10 to 5.99.
UPDATE PRODUCTS 
SET PRICE =5.99 
WHERE QUANTITY<10;

--3) Double the price of products with a quantity between 15 and 50.
UPDATE PRODUCTS
SET PRICE=2*PRICE
WHERE QUANTITY BETWEEN 15 AND 50;


--4) Update the product name for a specific product with product_id
--'RGAN01� to a new name, �Barbie Doll� and also update price to 6.99.

UPDATE PRODUCTS
SET
PRODUCT_NAME='Barbiee Doll',
PRICE=6.99
WHERE PRODUCT_ID='RGAN01';

--5) Increase the price by 5% for products with a name containing the
--word �toy�

UPDATE PRODUCTS
SET PRICE=PRICE+PRICE*0.05
WHERE PRODUCT_NAME LIKE '%toy%';

--6) Add a prefix "SALE: " to the beginning of the product name for all
--products.

UPDATE PRODUCTS
SET PRODUCT_NAME=CONCAT('SALE:',PRODUCT_NAME);



--7) Decrease the stock quantity by 1 for products with quantity more
--than 10.
UPDATE PRODUCTS
SET QUANTITY=(QUANTITY-1)
WHERE QUANTITY>10;




--8) Update the quantity of products to NULL with price more than 9. 
UPDATE PRODUCTS
SET QUANTITY =NULL
WHERE PRICE>9;



