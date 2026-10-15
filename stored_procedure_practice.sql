-- =============================================
-- 1. BÀI TH?C HÀNH TRIGGER TRONG MYSQL
-- =============================================
CREATE DATABASE IF NOT EXISTS company;
USE company;

-- 1.1. T?o b?ng employees
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- 1.2. T?o Trigger update_department tru?c khi INSERT
DELIMITER //

DROP TRIGGER IF EXISTS update_department//

CREATE TRIGGER update_department
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary >= 5000 THEN
        SET NEW.department = 'Management';
    ELSEIF NEW.salary >= 3000 THEN
        SET NEW.department = 'Sales';
    ELSE
        SET NEW.department = 'Support';
    END IF;
END //

DELIMITER ;

-- 1.3. Ki?m tra Trigger b?ng cách chèn d? li?u m?u
INSERT INTO employees (name, department, salary)
VALUES 
    ('John Doe', 'A', 3500),
    ('Jane Smith', 'A', 2000),
    ('David Johnson', 'A', 6000);

-- Truy v?n ki?m tra k?t qu? (C?t department s? t? d?ng chuy?n thành Sales, Support, Management)
SELECT * FROM employees;


-- =============================================
-- 2. BÀI TH?C HÀNH VIEW TRONG MYSQL
-- =============================================
USE classicmodels;

CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

DROP VIEW IF EXISTS customer_views;


-- =============================================
-- 3. BÀI TH?C HÀNH STORED PROCEDURE & PARAMETERS
-- =============================================
USE classicmodels;

DELIMITER //
DROP PROCEDURE IF EXISTS getCusById//
CREATE PROCEDURE getCusById (IN cusNum INT)
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS GetCustomersCountByCity//
CREATE PROCEDURE GetCustomersCountByCity (
    IN in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customerNumber) INTO total
    FROM customers
    WHERE city = in_city;
END //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS SetCounter//
CREATE PROCEDURE SetCounter (
    INOUT counter INT,
    IN inc INT
)
BEGIN
    SET counter = counter + inc;
END //
DELIMITER ;
