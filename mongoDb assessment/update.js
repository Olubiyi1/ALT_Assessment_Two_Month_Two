// order + user details
db.orders.aggregate([
  {
    $lookup: {
      from: "users",        
      localField: "userId", 
      foreignField: "_id",  
      as: "user"            
    }
  },
  { $unwind: "$user" }      
]);

// order + products
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
