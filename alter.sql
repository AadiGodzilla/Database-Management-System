use db_bca;     -- Use 'db_bca' database

-- Create table 'vehicles' with attributes id, brand
CREATE TABLE vehicles(
    id INT,
    brand VARCHAR(20)
);
desc vehicles;  -- Describe the attributes of table 'vehicles'

-- Add a new column or attribute named 'color' with VARCHAR type and NOT NULL constraint 
ALTER TABLE vehicles ADD COLUMN color VARCHAR(20) NOT NULL;     

-- Modify an existing column or attribute 'brand' with  NOT NULL constraint 
ALTER TABLE vehicles MODIFY COLUMN brand VARCHAR(20) NOT NULL;

-- Modify an existing column or attribute 'id' as PRIMARY KEY 
ALTER TABLE vehicles MODIFY COLUMN id INT PRIMARY KEY;

-- Rename table 'vehicles' to 'cars'
ALTER TABLE vehicles RENAME TO cars;