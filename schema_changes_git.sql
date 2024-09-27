-- Add a new table
CREATE TABLE IF NOT EXISTS employees (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Hire_date DATE NOT NULL
);

-- Add a new column to an existing table
ALTER TABLE employees ADD COLUMN email VARCHAR(100);
