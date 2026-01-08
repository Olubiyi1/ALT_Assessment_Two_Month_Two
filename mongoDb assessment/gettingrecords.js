
// get orders and users details
db.orders.aggregate([
  {
    $lookup: {
      from: "users",
      localField: "userId",
      foreignField: "_id",
      as: "user"
    }
  },
  {
    $unwind: "$user"
  }
]);

// orders and products
db.orders.aggregate([
  {
    $lookup: {
      from: "products",
      localField: "items.productId",
      foreignField: "_id",
      as: "products"
    }
  }
]);
