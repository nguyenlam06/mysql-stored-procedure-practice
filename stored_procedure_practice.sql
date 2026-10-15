-- Ch?n co s? d? li?u
USE classicmodels;

-- =============================================
-- 1. BÀI TH?C HÀNH VIEW TRONG MYSQL
-- =============================================

-- 1.1. T?o View customer_views l?y các c?t basic
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Truy v?n t? View v?a t?o
SELECT * FROM customer_views;


-- 1.2. C?p nh?t View customer_views (thêm các c?t contact và l?c theo city = 'Nantes')
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Truy v?n ki?m tra l?i View sau khi c?p nh?t
SELECT * FROM customer_views;


-- 1.3. Xóa View customer_views
DROP VIEW IF EXISTS customer_views;


-- =============================================
-- 2. BÀI TH?C HÀNH STORED PROCEDURE & PARAMETERS
-- =============================================

-- 2.1. Tham s? lo?i IN: getCusById
DELIMITER //
DROP PROCEDURE IF EXISTS getCusById//
CREATE PROCEDURE getCusById (IN cusNum INT)
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

-- 2.2. Tham s? lo?i OUT: GetCustomersCountByCity
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

-- 2.3. Tham s? lo?i INOUT: SetCounter
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
