CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO productos (nombre, precio, stock)
VALUES
('Teclado Logitech', 25000.00, 10),
('Mouse Gaming', 15000.00, 15),
('Monitor Samsung', 95000.00, 5),
('Audifonos', 18000.00, 20),
('Memoria USB 64GB', 8000.00, 30);

SELECT * FROM productos;