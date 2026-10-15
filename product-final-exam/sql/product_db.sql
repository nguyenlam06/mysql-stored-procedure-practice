CREATE DATABASE IF NOT EXISTS product_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE product_db;

CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO products (name, price, quantity) VALUES
('iPhone 15 Pro Max', 1299.99, 15),
('Samsung Galaxy S24 Ultra', 1199.50, 20),
('MacBook Pro M3 14 inch', 1599.00, 10),
('Dell XPS 13 Plus', 1249.00, 8);
