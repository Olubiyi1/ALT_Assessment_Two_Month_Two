-- database setup
create database AZEnterprise;
use AZEnterprise;

-- creating base tables
create table users(
	id int primary key auto_increment,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(100) unique,
    createdAt datetime,
    updatedAt datetime
);

create table roles(
	id int primary key auto_increment,
    title varchar(10)
);

create table products(
	id int primary key auto_increment,
    items varchar(100),
    description text,
    createdAt datetime,
    updatedAt datetime
);

create table categories(
	id int primary key auto_increment,
    name varchar(100),
    description text
);

create table sizes(
	id int primary key auto_increment,
    label varchar(20)
);

create table orders(
	id int primary key auto_increment,
    status varchar(30) default "pending",
    order_date datetime,
    approvedAt datetime
);

-- CREATING JUNCTION TABLES

-- what was ordered
create table orderItems(
	id int primary key auto_increment,
    price decimal(5,2),
    quantity int
);

-- Junction: product - sizes(many - many)

-- this is a junction table that connects products and sizes cos a product can have many sizes 
-- while a size(eg small) can exist on a particular product making it many - many relationship
-- and also the price varies for different sizes

create table productSizes(
	id int primary key auto_increment,
    price decimal(5,2)
);

-- ADDING FOREIGN KEY COLUMNS

-- user to roles (one - many)
alter table users
add column roleId int;

-- products to categories (one - many)
alter table products
add column categoryId int;

-- productSizes to products and sizes(many - many)
alter table productsizes
add column productId int,
add column sizeId int;

-- Orders → Users (one-to-many for customer and approver)
alter table orders
add COLUMN userId INT,
add COLUMN approvedBy INT;

-- OrderItems → Users, Products, Sizes, Orders
ALTER TABLE orderItems
ADD COLUMN orderId INT,
ADD COLUMN productSizeId INT; 

-- ADDING FOREIGN KEY CONSTRAINTS

-- user constraints
alter table users
add constraint fk_user_roles
foreign key (roleId) references roles(id);

-- products constraints
alter table products
add constraint fk_categoryId
foreign key (categoryId) references categories(id);

-- ProductSizes constraints
alter table productSizes
add constraint fk_productSizes_products 
foreign key (productId) references products(id) on DELETE CASCADE,
ADD CONSTRAINT fk_productSizes_sizes 
foreign key (sizeId) references sizes(id) ON DELETE CASCADE;


-- order constraints
alter table orders
add constraint fk_orders_users 
foreign key (userId) references users(id),
add constraint fk_orders_approvedBy 
FOREIGN KEY (approvedBy) references users(id);

-- OrderItems constraints
alter table orderItems
add constraint fk_orderItems_orders 
foreign key (orderId) references orders(id) ON DELETE CASCADE,
add constraint fk_orderItems_productSizes 
foreign key (productSizeId) references productSizes(id);