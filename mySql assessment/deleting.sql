-- delete all productSizes of a specific size
DELETE productSizes
FROM productSizes
JOIN sizes ON productSizes.sizeId = sizes.id
WHERE sizes.label = 'small';

-- deleting all productsizes of a product
DELETE products, productSizes
FROM products
JOIN productSizes ON products.id = productSizes.productId
WHERE products.items = 'Laptop';
