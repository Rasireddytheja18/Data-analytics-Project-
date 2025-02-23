-- TASK 1--
create database techmac_db
use techmac_db;
-- TASK 2--
CREATE TABLE techhyve (
    empid VARCHAR(5) PRIMARY KEY,
    firstname CHAR(50),
    lastname CHAR(50),
    gender CHAR(1),
    age INT CHECK (age >= 0),
    proficiencylevel INT DEFAULT 1
);
-- TASK 3--
INSERT INTO techhyve (empid,firstName,lastName,gender,age,proficiencyLevel)
VALUES
('TH001', 'Eli', 'Evans', 'M', 26, 1),
('TH002', 'Carlos', 'Simmons', 'M', 32, 2),
('TH003', 'Kathie', 'Bryant', 'F', 25, 1),
('TH004', 'Joey', 'Hughes', 'M', 41, 4),
('TH005', 'Alice', 'Matthews', 'F', 52, 4);
select * from techhyve
-- TASK 4--
create table tblbackup select * from techhyve;






