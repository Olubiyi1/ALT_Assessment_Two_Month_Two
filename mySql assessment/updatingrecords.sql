-- Update a user’s role using roles table
UPDATE users
JOIN roles ON roles.id = users.roleId
SET users.roleId = 1  
WHERE users.email = 'jide@gmail.com';

-- update order status based on customer
UPDATE orders
JOIN users ON orders.userId = users.id
SET orders.status = 'approved',
    orders.approvedBy = 1,
    orders.approvedAt = NOW()
WHERE users.email = 'jide@gmail.com'
  AND orders.status = 'pending';

