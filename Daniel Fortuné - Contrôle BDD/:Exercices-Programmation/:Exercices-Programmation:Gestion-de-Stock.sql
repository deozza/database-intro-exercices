DROP DATABASE IF EXISTS gcivil;
CREATE DATABASE gcivil;
USE gcivil;


CREATE TABLE suppliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);


CREATE TABLE products (
    code VARCHAR(255) PRIMARY KEY,
    designation VARCHAR(255) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL
);


CREATE TABLE product_suppliers (
    product_code VARCHAR(255) NOT NULL,
    supplier_id INT NOT NULL, 
    purchase_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (product_code, supplier_id),
    FOREIGN KEY (product_code) REFERENCES products(code),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);
