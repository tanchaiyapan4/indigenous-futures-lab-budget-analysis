USE lab_budget_analysis;

-- Total funding received
SELECT
    SUM(addition) AS total_funding
FROM budget_transactions;

-- Total spending
SELECT
    SUM(deduction) AS total_spending
FROM budget_transactions;

-- Remaining net balance
SELECT
    SUM(amount_signed) AS net_cash_flow
FROM budget_transactions;

-- Largest expenses
SELECT
    transaction_date,
    description,
    deduction
FROM budget_transactions
WHERE deduction > 0
ORDER BY deduction DESC
LIMIT 5;

-- Funding by fiscal year
SELECT
    fiscal_year,
    SUM(addition) AS funding_received
FROM budget_transactions
GROUP BY fiscal_year;

-- Spending by fiscal year
SELECT
    fiscal_year,
    SUM(deduction) AS total_spending
FROM budget_transactions
GROUP BY fiscal_year;