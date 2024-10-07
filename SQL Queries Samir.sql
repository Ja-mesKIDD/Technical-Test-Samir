-- Create a database for loan data
CREATE DATABASE loan_data;
USE loan_data;

-- Create tables for loans, borrowers, and repayments
CREATE TABLE IF NOT EXISTS loans (
    loan_id INT PRIMARY KEY,
    borrower_id INT,
    loan_amount DECIMAL(10, 2),
    interest_rate DECIMAL(5, 2),
    term_months INT,
    status VARCHAR(20),
    date_issued DATE,
    date_due DATE,
    date_repaid DATE NULL
);

CREATE TABLE IF NOT EXISTS borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender CHAR(1),
    employment_status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS repayments (
    repayment_id INT PRIMARY KEY,
    loan_id INT,
    amount_repaid DECIMAL(10, 2),
    date_repaid DATE
);


-- Load data into the loans table
LOAD DATA LOCAL INFILE 'D:/PWD/Prog/SQL/Data-Analyst-Home-Task/Data-Analyst-Home-Task/Loans.csv'
INTO TABLE loans
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(loan_id, borrower_id, loan_amount, interest_rate, term_months, status, date_issued, date_due, date_repaid);

-- Load data into the borrowers table
LOAD DATA LOCAL INFILE 'D:/PWD/Prog/SQL/Data-Analyst-Home-Task/Data-Analyst-Home-Task/Borrowers.csv'
INTO TABLE borrowers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(borrower_id, name, age, gender, employment_status);

-- Load data into the repayments table
LOAD DATA LOCAL INFILE 'D:/PWD/Prog/SQL/Data-Analyst-Home-Task/Data-Analyst-Home-Task/Repayments.csv'
INTO TABLE repayments
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(repayment_id, loan_id, amount_repaid, date_repaid);

-- Check data in the loans table
SELECT * FROM loans;

-- Check data in the borrowers table
SELECT * FROM borrowers;

-- Check data in the repayments table
SELECT * FROM repayments;

-- Query for overall loan statistics
SELECT 
    COUNT(*) AS total_loans_issued,
    AVG(loan_amount) AS average_loan_amount,
    (SELECT SUM(amount_repaid) FROM repayments) AS total_amount_repaid
FROM loans;

-- Query for number of loans issued per month
SELECT 
    DATE_FORMAT(date_issued, '%Y-%m') AS month,
    COUNT(*) AS loans_issued_per_month
FROM loans 
GROUP BY month
ORDER BY month;
