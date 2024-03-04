class Product {
  int id;
  String title;
  var price;
  String description;
  String category;
  String image;
  Rating rating;

  Product(this.id, this.title, this.price, this.description, this.category,
      this.image, this.rating);

  factory Product.formJson(Map<String, dynamic> json) {
    return Product(
        json["id"],
        json["title"],
        json["price"],
        json["description"],
        json["category"],
        json["image"],
        Rating.fromJson(json["rating"]));
  }
}

class Rating {
  var rating;
  var count;

  Rating(this.rating, this.count);

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(json["rate"], json["count"]);
  }
}

class DataProduct {
  List<Product> data;

  DataProduct(this.data);

  factory DataProduct.fromJson(var json) {
    List<Product> myList = [];
    for (var c in json) {
      Product product = Product.formJson(c);

      myList.add(product);
    }
    return DataProduct(myList);
  }
}
