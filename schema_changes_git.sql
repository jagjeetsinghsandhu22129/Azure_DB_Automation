-- Add a new table
--CREATE TABLE IF NOT EXISTS employees (
  --  Id SERIAL PRIMARY KEY,
    --Name VARCHAR(100) NOT NULL,
    --Department VARCHAR(50) NOT NULL,
   -- Hire_date DATE NOT NULL
--);

-- Add a new column to an existing table
--ALTER TABLE employees ADD COLUMN email VARCHAR(100);


--Insert some data in the table

-- Insert data into the employees table
--INSERT INTO jsfirstdb.employees (Name, Department, Hire_date, email) 
--VALUES 
    --('John', 'Marketing', '2021-06-15', 'john@example.com'),
    ('Rahul', 'Engineering', '2020-09-25', 'rahul@example.com')--,
   -- ('Mandeep Singh', 'Finance', '2019-03-12', 'mandeep.s@example.com'),
    --('Mukesh Kumar', 'Human Resources', '2022-01-10', 'mukesh.k@example.com');



import mysql.connector
import os

# Database connection
connection = mysql.connector.connect(
    host=os.getenv('MYSQL_HOST'),
    user=os.getenv('MYSQL_USER'),
    password=os.getenv('MYSQL_PASSWORD'),
    database=os.getenv('MYSQL_DB')
)

cursor = connection.cursor()

# Open and execute the SQL script
with open('update_companydb_schema.sql', 'r') as file:
    sql_script = file.read()
    sql_commands = sql_script.split(';')
    
    for command in sql_commands:
        if command.strip():
            cursor.execute(command)

connection.commit()
cursor.close()
connection.close()

print("SQL script executed successfully.............")
