-- Ch?n co s? d? li?u
USE classicmodels;

-- 1. T?o Stored Procedure d?u tiên
DELIMITER //

DROP PROCEDURE IF EXISTS indAllCustomers//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

-- G?i Stored Procedure
CALL findAllCustomers();

-- 2. S?a Stored Procedure (DROP và CREATE l?i)
DELIMITER //

DROP PROCEDURE IF EXISTS indAllCustomers//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;

-- G?i l?i Stored Procedure sau khi s?a
CALL findAllCustomers();
