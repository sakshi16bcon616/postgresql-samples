CREATE TABLE lists(
    lid SERIAL PRIMARY KEY,
    lname VARCHAR(20) NOT NULL,
    pid INT REFERENCES people NOT NULL
)