SELECT C.customer_name, C.customer_street, C.customer_city, D.account_number
FROM Customer C, Depositor D, Account A, Branch B
WHERE C.customer_name = D.customer_name
AND A.account_number = D.account_number
AND A.branch_name = B.branch_name
AND B.Branch_city = C.customer_city;

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c
WHERE c.customer_name IN (
    SELECT d.customer_name
    FROM Depositor d, Account a, Branch b
    WHERE d.account_number = a.account_number
    AND a.branch_name = b.branch_name
    AND c.customer_city = b.branch_city );

SELECT DISTINCT c.customer_name, c.customer_street, c.customer_city
FROM Customer c, Loan l, Branch b, Borrower br
WHERE c.customer_name = br.customer_name
AND br.loan_number = l.loan_number
AND l.branch_name = b.branch_name
AND c.customer_city = b.branch_city;

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c
WHERE c.customer_name IN (
    SELECT br.customer_name
    FROM Borrower br, Loan l, Branch b
    WHERE br.loan_number = l.loan_number
    AND l.branch_name = b.branch_name
    AND c.customer_city = b.branch_city );

WITH temp1(Branch_city,avg_balance,sum_balance) AS(
    SELECT B.Branch_city, AVG(A.balance) AS avg_balance,SUM(A.balance) AS sum_balance
    FROM Branch B, Account A
    WHERE B.branch_name=A.branch_name
    GROUP BY B.Branch_city )
SELECT Branch_city,avg_balance FROM temp1 WHERE sum_balance>=1000;

SELECT b.branch_city, AVG(a.balance) AS avg_balance
FROM Branch b, Account a
WHERE b.branch_name = a.branch_name
GROUP BY b.branch_city
HAVING SUM(a.balance) >= 1000;

WITH temp1(Branch_city,AVG_AMOUNT,sum_amount) AS(
    SELECT B.Branch_city, AVG(L.amount) AS AVG_AMOUNT,SUM(L.amount) AS sum_amount
    FROM Branch B, Loan L
    WHERE B.branch_name=L.branch_name
    GROUP BY B.Branch_city )
SELECT Branch_city,AVG_AMOUNT FROM temp1 WHERE sum_amount>=1000;

SELECT B.Branch_city, AVG(L.amount) AS avg_balance
FROM Branch B, Loan L
WHERE B.branch_name = L.branch_name
GROUP BY B.Branch_city
HAVING SUM(L.amount)>=1500;

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c, Depositor d, Account a
WHERE c.customer_name = d.customer_name
AND d.account_number = a.account_number
AND a.balance = (SELECT MAX(balance) FROM Account);

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c, Depositor d, Account a
WHERE c.customer_name = d.customer_name
AND d.account_number = a.account_number
AND a.balance >= ALL (SELECT balance FROM Account);

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c, Borrower br, Loan l
WHERE c.customer_name = br.customer_name
AND br.loan_number = l.loan_number
AND l.amount = (SELECT MIN(amount) FROM Loan);

SELECT c.customer_name, c.customer_street, c.customer_city
FROM Customer c, Borrower br, Loan l
WHERE c.customer_name = br.customer_name
AND br.loan_number = l.loan_number
AND l.amount <= ALL (SELECT amount FROM Loan);

SELECT DISTINCT b.branch_name, b.branch_city
FROM Branch b
WHERE b.branch_name IN (
    SELECT branch_name
    FROM Account
)
AND b.branch_name IN (
    SELECT branch_name
    FROM Loan );

SELECT DISTINCT b.branch_name, b.branch_city
FROM Branch b
WHERE EXISTS (
    SELECT 1
    FROM Account a
    WHERE a.branch_name = b.branch_name )
AND EXISTS (
    SELECT 1
    FROM Loan l
    WHERE l.branch_name = b.branch_name );

SELECT DISTINCT c.customer_name, c.customer_city
FROM Customer c
WHERE c.customer_name IN (
    SELECT d.customer_name
    FROM Depositor d )
AND c.customer_name NOT IN (
    SELECT br.customer_name
    FROM Borrower br );

SELECT DISTINCT c.customer_name, c.customer_city
FROM Customer c
WHERE EXISTS (
    SELECT 1
    FROM Depositor d
    WHERE d.customer_name = c.customer_name )
AND NOT EXISTS (
    SELECT 1
    FROM Borrower br
    WHERE br.customer_name = c.customer_name );

SELECT branch_name
FROM (
    SELECT branch_name, SUM(balance) AS total_balance
    FROM Account
    GROUP BY branch_name )
WHERE total_balance > (
    SELECT AVG(total_balance)
    FROM (
        SELECT branch_name, SUM(balance) AS total_balance
        FROM Account
        GROUP BY branch_name ) );

WITH temp1 AS (
    SELECT B.branch_name, SUM(A.balance) AS total_balance
    FROM Branch B, Account A
    WHERE B.branch_name = A.branch_name
    GROUP BY B.branch_name )
SELECT branch_name
FROM temp1
WHERE total_balance > (
    SELECT AVG(total_balance)
    FROM temp1 );

SELECT branch_name
FROM (
    SELECT branch_name, SUM(amount) AS total_amount
    FROM Loan
    GROUP BY branch_name )
WHERE total_amount < (
    SELECT AVG(total_amount)
    FROM (
        SELECT branch_name, SUM(amount) AS total_amount
        FROM Loan
        GROUP BY branch_name ) );

WITH temp1 AS (
    SELECT B.branch_name, SUM(L.amount) AS total_amount
    FROM Branch B, Loan L
    WHERE B.branch_name = L.branch_name
    GROUP BY B.branch_name )
SELECT branch_name
FROM temp1
WHERE total_amount < (
    SELECT AVG(total_amount)
    FROM temp1 );
