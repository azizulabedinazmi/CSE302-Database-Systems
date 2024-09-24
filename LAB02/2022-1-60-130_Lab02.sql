CREATE TABLE account (
    account_no CHAR(5) PRIMARY KEY,
    balance NUMBER CHECK (balance >= 0) NOT NULL
);

CREATE TABLE customer (
    customer_no CHAR(5) PRIMARY KEY,
    customer_name VARCHAR2(20) NOT NULL,
    customer_city VARCHAR2(10)
);

CREATE TABLE depositor (
    account_no CHAR(5),
    customer_no CHAR(5),
    PRIMARY KEY (account_no, customer_no),
    FOREIGN KEY (account_no) REFERENCES account(account_no),
    FOREIGN KEY (customer_no) REFERENCES customer(customer_no)
);

ALTER TABLE customer
ADD date_of_birth DATE;

ALTER TABLE customer
DROP COLUMN date_of_birth;

ALTER TABLE depositor
RENAME COLUMN account_no TO a_no;

ALTER TABLE depositor
RENAME COLUMN customer_no TO c_no;

INSERT INTO ACCOUNT VALUES ('A-101',12000); 
INSERT INTO ACCOUNT VALUES ('A-102',6000);
INSERT INTO ACCOUNT VALUES ('A-103',2500);

INSERT INTO CUSTOMER VALUES ('C-101','ALICE','DHAKA'); 
INSERT INTO CUSTOMER VALUES ('C-102','ANNI','DHAKA'); 
INSERT INTO CUSTOMER VALUES ('C-103','BOB','CHITTAGONG'); 
INSERT INTO CUSTOMER VALUES ('C-104','CHARLIE','KHULNA');

INSERT INTO DEPOSITOR VALUES ('A-101','C-101'); 
INSERT INTO DEPOSITOR VALUES ('A-103','C-102'); 
INSERT INTO DEPOSITOR VALUES ('A-103','C-103'); 
INSERT INTO DEPOSITOR VALUES ('A-102','C-104'); 

SELECT customer_name, customer_city FROM customer;

SELECT DISTINCT customer_city FROM customer;

SELECT account_no FROM account WHERE balance > 7000;

SELECT customer_no, customer_name FROM customer WHERE customer_city = 'KHULNA';

SELECT customer_no, customer_name FROM customer WHERE NOT customer_city = 'DHAKA';

SELECT c.customer_name, c.customer_city, a.balance
FROM customer c, depositor d, account a
WHERE c.customer_no = d.c_no AND d.a_no = a.account_no AND a.balance > 7000;

SELECT c.customer_name, c.customer_city
FROM customer c, depositor d, account a
WHERE c.customer_no = d.c_no AND d.a_no = a.account_no AND a.balance > 7000 AND c.customer_city != 'KHULNA';

SELECT a.account_no, a.balance
FROM account a, depositor d
WHERE a.account_no = d.a_no AND d.c_no = 'C-102';

SELECT a.account_no, a.balance
FROM account a, depositor d, customer c
WHERE a.account_no = d.a_no AND d.c_no = c.customer_no AND c.customer_city IN ('DHAKA', 'KHULNA');

SELECT c.customer_no, c.customer_name, c.customer_city
FROM customer c
LEFT JOIN depositor d ON c.customer_no = d.c_no
WHERE d.a_no IS NULL;



