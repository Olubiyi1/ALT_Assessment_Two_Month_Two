-- inserting records for roles
INSERT INTO roles (title) 
VALUES 
('admin'),
('user');

-- inserting records for users
INSERT INTO users (firstname, lastname, email, createdAt, updatedAt, roleId) VALUES
('Babajide', 'Olubiyi', 'jide@gmail.com', NOW(), NOW(), 1),
('Johnson', 'Philip', 'jp@example.com', NOW(), NOW(), 2);

-- inserting records for categories
INSERT INTO categories (name, description) 
VALUES
('Electronics', 'Electronic gadgets and devices'),
('Furniture', 'Office and home furniture');

-- inserting records for sizes
INSERT INTO sizes (label) 
VALUES
('small'),
('medium'),
('large');

-- inserting records for products
INSERT INTO products (items, description, createdAt, updatedAt, categoryId) VALUES
('Laptop', 'High performance laptop', NOW(), NOW(), 1),
('Office Chair', 'Comfortable ergonomic chair', NOW(), NOW(), 2);

-- inserting records for products-sizes
INSERT INTO productSizes (productId, sizeId, price) 
VALUES
(1, 1, 500000),  
(1, 2, 520000),  
(2, 2, 150000),  
(2, 3, 160000);  

-- inserting records for orders
INSERT INTO orders (status, order_date, approvedAt, userId, approvedBy) 
VALUES
('pending', NOW(), NULL, 2, NULL),
('approved', NOW(), NOW(), 2, 1);

-- inserting records for orders-items
INSERT INTO orderItems (price, quantity, orderId, productSizeId) 
VALUES
(500000, 1, 1, 1), 
(520000, 2, 2, 2),  
(150000, 1, 2, 3); 





