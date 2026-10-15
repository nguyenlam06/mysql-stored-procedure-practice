-- ============================================================================
-- BÀI T?P: VIEW, INDEX, STORED PROCEDURE
-- CSDL: demo | B?ng: Products
-- ============================================================================

-- BU?C 1: T?o co s? d? li?u demo
CREATE DATABASE IF NOT EXISTS demo;
USE demo;

-- BU?C 2: T?o b?ng Products và chèn d? li?u m?u
DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(20) NOT NULL,
    productName VARCHAR(100) NOT NULL,
    productPrice DECIMAL(10,2) NOT NULL,
    productAmount INT NOT NULL,
    productDescription TEXT,
    productStatus VARCHAR(20) DEFAULT 'Available'
);

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES 
('P001', 'iPhone 15 Pro', 999.99, 50, 'Apple Smartphone', 'Available'),
('P002', 'Samsung Galaxy S24', 899.99, 30, 'Samsung Smartphone', 'Available'),
('P003', 'MacBook Pro M3', 1999.99, 15, 'Apple Laptop', 'Available'),
('P004', 'Dell XPS 15', 1499.99, 20, 'Dell Laptop', 'OutOfStock'),
('P005', 'iPad Air 5', 599.99, 40, 'Apple Tablet', 'Available');


-- BU?C 3: T?o Index và dùng EXPLAIN ki?m tra
-- 3.1. Truy v?n EXPLAIN TRU?C KHI T?O INDEX (S? th?y type = ALL - Full Table Scan)
EXPLAIN SELECT * FROM Products WHERE productCode = 'P003';
EXPLAIN SELECT * FROM Products WHERE productName = 'iPhone 15 Pro' AND productPrice = 999.99;

-- 3.2. T?o Unique Index trên c?t productCode
CREATE UNIQUE INDEX idx_productCode ON Products(productCode);

-- 3.3. T?o Composite Index trên 2 c?t productName và productPrice
CREATE INDEX idx_name_price ON Products(productName, productPrice);

-- 3.4. Truy v?n EXPLAIN SAU KHI T?O INDEX (S? th?y type = const / ref - Dùng Index tìm ki?m nhanh)
EXPLAIN SELECT * FROM Products WHERE productCode = 'P003';
EXPLAIN SELECT * FROM Products WHERE productName = 'iPhone 15 Pro' AND productPrice = 999.99;


-- BU?C 4: T?o, s?a d?i và xóa View
-- 4.1. T?o View w_products
CREATE VIEW w_products AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;

-- Xem d? li?u t? View
SELECT * FROM w_products;

-- 4.2. S?a d?i View (CREATE OR REPLACE VIEW)
CREATE OR REPLACE VIEW w_products AS
SELECT productCode, productName, productPrice, productAmount, productStatus
FROM Products
WHERE productStatus = 'Available';

SELECT * FROM w_products;

-- 4.3. Xóa View
DROP VIEW IF EXISTS w_products;


-- BU?C 5: T?o các Stored Procedure CRUD
DELIMITER //

-- 5.1. SP l?y t?t c? thông tin s?n ph?m
DROP PROCEDURE IF EXISTS getAllProducts//
CREATE PROCEDURE getAllProducts()
BEGIN
    SELECT * FROM Products;
END //

-- 5.2. SP thêm m?t s?n ph?m m?i
DROP PROCEDURE IF EXISTS addNewProduct//
CREATE PROCEDURE addNewProduct(
    IN p_code VARCHAR(20),
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status VARCHAR(20)
)
BEGIN
    INSERT INTO Products(productCode, productName, productPrice, productAmount, productDescription, productStatus)
    VALUES (p_code, p_name, p_price, p_amount, p_desc, p_status);
END //

-- 5.3. SP s?a thông tin s?n ph?m theo Id
DROP PROCEDURE IF EXISTS updateProductById//
CREATE PROCEDURE updateProductById(
    IN p_id INT,
    IN p_code VARCHAR(20),
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status VARCHAR(20)
)
BEGIN
    UPDATE Products
    SET productCode = p_code,
        productName = p_name,
        productPrice = p_price,
        productAmount = p_amount,
        productDescription = p_desc,
        productStatus = p_status
    WHERE Id = p_id;
END //

-- 5.4. SP xóa s?n ph?m theo Id
DROP PROCEDURE IF EXISTS deleteProductById//
CREATE PROCEDURE deleteProductById(
    IN p_id INT
)
BEGIN
    DELETE FROM Products WHERE Id = p_id;
END //

DELIMITER ;

-- Test g?i các Stored Procedure:
CALL getAllProducts();
CALL addNewProduct('P006', 'AirPods Pro 2', 249.99, 100, 'Wireless Earbuds', 'Available');
CALL updateProductById(1, 'P001', 'iPhone 15 Pro Max', 1199.99, 45, 'Updated Apple Smartphone', 'Available');
CALL deleteProductById(5);
CALL getAllProducts();
