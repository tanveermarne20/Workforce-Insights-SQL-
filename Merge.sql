SELECT *
FROM EMPLOYEE;

CREATE TABLE EMPLOYEE_TRG
AS
SELECT * FROM EMPLOYEE
WHERE
1=2;

SELECT *
FROM EMPLOYEE_TRG;

MERGE INTO EMPLOYEE_TRG TRG
USING EMPLOYEE ES
ON (TRG.EMPLOYEE_ID=ES.EMPLOYEE_ID)
WHEN  MATCHED THEN
UPDATE
SET
 TRG.EMPLOYEE_NAME=ES.EMPLOYEE_NAME,
 TRG.EMAIL=ES.EMAIL,
 TRG.SALARY=ES.SALARY,
 TRG.DEPARTMENT_ID=ES.DEPARTMENT_ID

WHEN NOT MATCHED THEN 
INSERT(EMPLOYEE_ID,EMPLOYEE_NAME,EMAIL,SALARY,DEPARTMENT_ID) 
VALUES(ES.EMPLOYEE_ID,ES.EMPLOYEE_NAME,ES.EMAIL,ES.SALARY,ES.DEPARTMENT_ID);



--INSERTING INTO EMPLOYEE
INSERT INTO EMPLOYEE VALUES (14,'Kiran','kiran@gmail.com',8000,2);

UPDATE EMPLOYEE 
SET DEPARTMENT_ID=2
WHERE EMPLOYEE_ID=13;

COMMIT;

--=============================================================================


SELECT *FROM CUSTOMER;

--TAKE BACKUP OF EXISTING TABLE
CREATE TABLE CUSTOMER_BKP
AS
SELECT *FROM CUSTOMER;

SELECT *FROM 
CUSTOMER;
SELECT *
FROM CUSTOMER_BKP;


MERGE INTO CUSTOMER_BKP TRG
USING CUSTOMER SC
ON (TRG.CUSTOMER_ID=SC.CUSTOMER_ID)
WHEN MATCHED THEN 
UPDATE
SET 
   TRG.CUSTOMER_NAME=SC.CUSTOMER_NAME,
   TRG.SEGMENT=SC.SEGMENT,
   TRG.CITY=SC.CITY,
   TRG.EMAIL=SC.EMAIL,
   TRG.NO_OF_COMPLAINTS=SC.NO_OF_COMPLAINTS
WHEN NOT MATCHED THEN
INSERT (CUSTOMER_ID,CUSTOMER_NAME,SEGMENT,CITY,EMAIL,NO_OF_COMPLAINTS)
VALUES (SC.CUSTOMER_ID,SC.CUSTOMER_NAME,SC.SEGMENT,SC.CITY,SC.EMAIL,SC.NO_OF_COMPLAINTS);
   
--INSERTING
INSERT INTO CUSTOMER
VALUES(26,'Coca','Online','Washington','coca@gmail.com',2);

UPDATE CUSTOMER
SET
EMAIL='william@gmail.com'
WHERE
CUSTOMER_ID=7;



commit;


