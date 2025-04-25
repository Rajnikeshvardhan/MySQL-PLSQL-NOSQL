use triggers;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);
INSERT INTO products (product_name, quantity, price) VALUES
('Laptop', 10, 75000.00),
('Smartphone', 20, 30000.00),
('Headphones', 50, 1500.00),
('Keyboard', 30, 1200.00);




CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity_sold INT NOT NULL,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- For now, wait until the trigger is ready, or insert manually for testing
INSERT INTO sales (product_id, quantity_sold) VALUES
(1, 2),  -- Laptop, selling 2
(2, 1);  -- Smartphone, selling 1


CREATE TABLE audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    table_name VARCHAR(50),
    action_type VARCHAR(50),
    product_id INT,
    old_value VARCHAR(255),
    new_value VARCHAR(255),
    change_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

