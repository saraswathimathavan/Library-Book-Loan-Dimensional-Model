CREATE EXTERNAL TABLE IF NOT EXISTS fact_loan (
    loan_id STRING,
    book_key INT,
    member_key INT,
    checkout_date_key INT,
    due_date_key INT,
    return_date_key INT,
    loan_count INT,
    loan_duration_days INT,
    renewal_count INT,
    overdue_days INT
)
STORED AS TEXTFILE
LOCATION 's3://YOUR-BUCKET-NAME/warehouse/fact_loan/';
