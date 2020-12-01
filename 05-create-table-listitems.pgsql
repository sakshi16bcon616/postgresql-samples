CREATE TABLE listItems(
    liid SERIAL PRIMARY KEY,
    liDesired varchar(20) NOT NULL DEFAULT 1,
    liPurchase varchar(20) NOT NULL DEFAULT 0,
    lid INT REFERENCES lists NOT NULL,
    iid INT REFERENCES items NOT NULL
)