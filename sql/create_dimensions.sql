-- Dimension 1: Book
CREATE EXTERNAL TABLE IF NOT EXISTS dim_book (
    book_key INT,
    book_title STRING,
    author STRING,
    genre STRING,
    publisher STRING
)
STORED AS TEXTFILE
LOCATION 's3://YOUR-BUCKET-NAME/warehouse/dim_book/';


-- Dimension 2: Member
CREATE EXTERNAL TABLE IF NOT EXISTS dim_member (
    member_key INT,
    member_name STRING,
    membership_type STRING,
    join_date DATE,
    member_city STRING
)
STORED AS TEXTFILE
LOCATION 's3://YOUR-BUCKET-NAME/warehouse/dim_member/';


-- Dimension 3: Date
CREATE EXTERNAL TABLE IF NOT EXISTS dim_date (
    date_key INT,
    full_date DATE,
    day INT,
    month INT,
    month_name STRING,
    quarter INT,
    year INT
)
STORED AS TEXTFILE
LOCATION 's3://YOUR-BUCKET-NAME/warehouse/dim_date/';
