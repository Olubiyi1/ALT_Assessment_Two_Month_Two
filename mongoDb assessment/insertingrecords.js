// inserting into roles collection
db.roles.insertMany([
  { name: "admin", permissions: ["read", "write", "delete"] },
  { name: "moderator", permissions: ["read", "write"] },
  { name: "user", permissions: ["read"] }
]);

// inserting into categories
db.categories.insertMany([
  {
    name: "Books",
    description: "Educational and non-fiction books",
    isActive: true
  },
  {
    name: "Clothing",
    description: "Men and women fashion items",
    isActive: true
  },
  {
    name: "Food",
    description: "Groceries and consumables",
    isActive: true
  }
]);

// inserting for users
db.users.insertMany([
  {
    firstname: "Jide",
    lastname: "john",
    email: "jj@example.com",
    password: "password",
    role: "admin",
    isVerified: true
  },
  {
    firstname: "tom",
    lastname: "Smith",
    email: "tj@example.com",
    password: "password",
    role: "user",
    isVerified: false
  }
]);
// inserting for products
db.products.insertMany([
  {
    name: "Laptop",
    description: "15-inch laptop for work and study",
    price: 450000,
    stock: 10,
    categoryId: ObjectId("65abc12345fgh67890cat"),
    isActive: true
  },
  {
    name: "T-Shirt",
    description: "Cotton round-neck t-shirt",
    price: 12000,
    stock: 50,
    categoryId: ObjectId("65abc67890xyz12345cat"),
    isActive: true
  }
]);
// inserting into sizes
db.sizes.insertMany([
  {
    name: "Small",
    code: "S",
    isActive: true
  },
  {
    name: "Medium",
    code: "M",
    isActive: true
  },
  {
    name: "Large",
    code: "L",
    isActive: true
  },
  {
    name: "Extra Large",
    code: "XL",
    isActive: true
  }
]);
// inserting for orders
db.orders.insertMany([
  {
    userId: ObjectId("65user001"),
    items: [
      {
        productId: ObjectId("65prod001"),
        quantity: 1,
        price: 850000
      }
    ],
    totalAmount: 850000,
    status: "paid",
    paymentMethod: "transfer",
    createdAt: new Date()
  },
  {
    userId: ObjectId("65user002"),
    items: [
      {
        productId: ObjectId("65prod002"),
        quantity: 3,
        price: 12000
      }
    ],
    totalAmount: 36000,
    status: "pending",
    paymentMethod: "card",
    createdAt: new Date()
  }
]);
