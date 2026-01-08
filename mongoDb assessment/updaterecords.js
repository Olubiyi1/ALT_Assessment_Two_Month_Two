// update users
db.users.updateOne(
  { _id: ObjectId("65user123") },
  {
    $set: {
      email: "newemail@example.com",
      updatedAt: new Date()
    }
  }
);
// update product
db.products.updateOne(
  { _id: ObjectId("65prod123") },
  {
    $set: {
      isActive: false,
      updatedAt: new Date()
    }
  }
);
