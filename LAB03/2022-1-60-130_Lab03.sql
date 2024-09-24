SELECT *
FROM BRANCH
WHERE ASSETS > 1000000;

SELECT account_number, balance
FROM account
WHERE branch_name = 'Downtown'
   OR balance BETWEEN 600 AND 750;

SELECT *
FROM account NATURAL JOIN BRANCH
WHERE branch_city = 'Rye';

SELECT loan.loan_number
FROM loan
JOIN borrower ON loan.loan_number = borrower.loan_number
JOIN customer ON borrower.customer_name = customer.customer_name
WHERE loan.amount >= 1000
  AND customer.customer_city = 'Harrison';

SELECT *
FROM ACCOUNT
ORDER BY balance DESC;

SELECT *
FROM CUSTOMER
ORDER BY customer_city;

SELECT customer_name
FROM depositor
INTERSECT
SELECT customer_name
FROM borrower;

SELECT customer_name
FROM depositor
UNION
SELECT customer_name
FROM borrower;

SELECT customer.customer_name, customer.customer_city
FROM customer
JOIN borrower ON customer.customer_name = borrower.customer_name
WHERE customer.customer_name NOT IN (SELECT customer_name FROM depositor);

SELECT SUM(ASSETS) AS total_assets
FROM branch;

SELECT branch_name, AVG(balance) AS average_balance
FROM account
GROUP BY branch_name;

SELECT branch.branch_city, AVG(account.balance) AS average_balance
FROM account
JOIN branch ON account.branch_name = branch.branch_name
GROUP BY branch.branch_city;

SELECT branch_name, MIN(amount) AS lowest_loan_amount
FROM loan
GROUP BY branch_name;

SELECT branch_name, COUNT(*) AS total_loans
FROM loan
GROUP BY branch_name;

SELECT customer.customer_name, account.account_number
FROM depositor
JOIN account ON depositor.account_number = account.account_number
JOIN customer ON depositor.customer_name = customer.customer_name
WHERE account.balance = (SELECT MAX(balance) FROM account);
