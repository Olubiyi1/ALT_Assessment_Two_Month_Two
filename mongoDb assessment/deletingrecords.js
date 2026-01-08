// delete user
db.users.deleteOne({ _id: ObjectId("65user123") });

// delete user order
db.orders.deleteMany({ userId: ObjectId("65user123") });

