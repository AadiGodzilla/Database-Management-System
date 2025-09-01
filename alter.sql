use db_bca;

CREATE TABLE vehicles(
    id INT,
    brand VARCHAR(20)
);
desc vehicles;
ALTER TABLE vehicles ADD COLUMN color VARCHAR(20) NOT NULL;
ALTER TABLE vehicles MODIFY COLUMN brand VARCHAR(20) NOT NULL;
ALTER TABLE vehicles MODIFY COLUMN id INT PRIMARY KEY;

ALTER TABLE cars RENAME TO vehicles;
DESC vehicles;