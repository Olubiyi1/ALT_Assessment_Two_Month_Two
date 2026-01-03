-- users with their roles
SELECT users.firstname, users.lastname, users.email, roles.title AS role
FROM users
JOIN roles ON users.roleId = roles.id;

-- products with their categories
SELECT products.items, products.description, categories.name AS category_name
FROM products
JOIN categories ON products.categoryId = categories.id;

-- products with sizes and prices

SELECT products.items, sizes.label AS size, productSizes.price
FROM productSizes
JOIN products ON productSizes.productId = products.id
JOIN sizes ON productSizes.sizeId = sizes.id;

