CREATE TABLE budget_transactions (
    transaction_id INT PRIMARY KEY,
    source_file VARCHAR(255),
    account_name VARCHAR(255),
    fiscal_year VARCHAR(20),
    transaction_date DATE,
    transaction_type VARCHAR(50),
    description TEXT,
    addition DECIMAL(10,2),
    deduction DECIMAL(10,2),
    amount_signed DECIMAL(10,2),
    ending_balance DECIMAL(10,2)
);

