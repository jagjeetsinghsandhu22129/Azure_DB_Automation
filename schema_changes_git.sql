-- Add a new table
CREATE TABLE IF NOT EXISTS employees (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Hire_date DATE NOT NULL
);

-- Add a new column to an existing table
--ALTER TABLE employees ADD COLUMN email VARCHAR(100);


--Insert some data in the table

-- Insert data into the employees table
INSERT INTO jsfirstdb.employees (Name, Department, Hire_date, email) 
VALUES 
    --('John', 'Marketing', '2021-06-15', 'john@example.com'),
    ('Rahul', 'Engineering', '2020-09-25', 'rahul@example.com')--,
   -- ('Mandeep Singh', 'Finance', '2019-03-12', 'mandeep.s@example.com'),
    --('Mukesh Kumar', 'Human Resources', '2022-01-10', 'mukesh.k@example.com');
