-- Ch?n co s? d? li?u
USE classicmodels;

-- =============================================
-- 1. Tham s? lo?i IN: getCusById
-- =============================================
DELIMITER //

DROP PROCEDURE IF EXISTS getCusById//

CREATE PROCEDURE getCusById (
    IN cusNum INT
)
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
END //

DELIMITER ;

-- G?i Stored Procedure lo?i IN
CALL getCusById(175);


-- =============================================
-- 2. Tham s? lo?i OUT: GetCustomersCountByCity
-- =============================================
DELIMITER //

DROP PROCEDURE IF EXISTS GetCustomersCountByCity//

CREATE PROCEDURE GetCustomersCountByCity (
    IN in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END //

DELIMITER ;

-- G?i Stored Procedure lo?i OUT
CALL GetCustomersCountByCity('Lyon', @total);
SELECT @total;


-- =============================================
-- 3. Tham s? lo?i INOUT: SetCounter
-- =============================================
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

-- G?i Stored Procedure lo?i INOUT
SET @counter = 1;
CALL SetCounter(@counter, 1); -- Tr? v? 2
CALL SetCounter(@counter, 1); -- Tr? v? 3
CALL SetCounter(@counter, 5); -- Tr? v? 8
SELECT @counter; -- K?t qu? là 8
