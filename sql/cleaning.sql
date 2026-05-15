USE lab_budget_analysis;

-- Check for null dates
SELECT *
FROM budget_transactions
WHERE transaction_date IS NULL;

-- Check distinct transaction types
SELECT DISTINCT transaction_type
FROM budget_transactions;

-- Check for negative deductions
SELECT *
FROM budget_transactions
WHERE deduction < 0;

-- Check for duplicate transactions
SELECT
    transaction_date,
    description,
    amount_signed,
    COUNT(*) AS duplicate_count
FROM budget_transactions
GROUP BY
    transaction_date,
    description,
    amount_signed
HAVING COUNT(*) > 1;

SELECT *
FROM budget_transactions
LIMIT 10;