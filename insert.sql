CREATE DATABASE db_bca;     -- Create a new Database named 'db_bca'
USE db_bca                  -- Use the 'db_bca' database

-- Create a new table named 'student' inside 'db_bca'
-- Attributes id: Int Type, name: VARCHAR Type, email: VARCHAR Type, phone VARCHAR Type
CREATE TABLE student(       
    id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);

-- INSERT new records the table 'students' with values 1111111111, 'Aadikshar', "Bhaneshwor", "928937902" 
-- This causes an error because 'id' of type INT cannot have more than 10 digits, here we have more than 10.
INSERT INTO students VALUES(1111111111, "Aadikshar", "Bhaneshwor", "928937902");

-- INSERT new records the table 'students' with values "ID101", 'Aadikshar', "Bhaneshwor", "928937902" 
-- This causes an error because 'id' of type INT cannot store VARCHAR type if it contains a character.
INSERT INTO students VALUES("ID101", "Aadikshar", "Bhaneshwor", "928937902");

-- INSERT new records the table 'students' with values "101", 'Aadikshar', "Bhaneshwor", "928937902" 
-- This will pass becuase although passing VARCHAR in 'id' of INT type only contains integer
INSERT INTO students VALUES("101", "Aadikshar", "Bhaneshwor", "928937902");

-- INSERT new records the table 'students' with values 101, 'Aadikshar', "Bhaneshwor", "928937902" 
-- This will pass becuase an integer value is being passed to the INT type attribute 'id'
INSERT INTO students VALUES(101, "Aadikshar", "Bhaneshwor", "928937902");

-- INSERT new record in the table 'students' with only providing values for 'id' and 'name' and making others null by default
INSERT INTO students(id, name) VALUES(101, "Aadikshar") -- Create a new table 'Employee'

-- Attributes: id INT type, name VARCHAR type, age INT type,
-- With a Constraint (checkAge) for 'age' attribute that check whether 'age' is greater-equal to 18
CREATE TABLE Employee(
    id INT,
    name VARCHAR(50),
    age INT,
    checkAge check(age>=18)
);

-- causes error because 'age' is less than 18, causing constraint error
-- Passes because 'age' is greater than 18                             
INSERT INTO employee VALUES(101, "Aadi", 16)    
INSERT INTO employee VALUES(101, 'Aadi', 20)    

-- Create a new table 'Detail'
-- Attributes: id INT type, name VARCHAR type
-- Constraint NOT NULL for name, this means that name cannot be empty
CREATE TABLE Detail(
    id INT,
    name VARCHAR(50) NOT NULL,
    age INT
)

INSERT INTO Detail(id, age) VALUES(101, 23);                        -- Causes error because 'name' is not provided
INSERT INTO Detail(id, name, age) VALUES(101, "Aadikshar" 23);      -- Passes because 'name' is provided
DESC employee;          -- Describe Attributes of the table 'Employee'
DROP TABLE details;     -- Delete table named 'details' with all its records and attributes
DROP DATABASE test      -- Delete Database named 'test' with all its tables, views and schemas