class ProductLocalDataSource {
  List<Map<String, dynamic>> getProducts() {
    return [
      {
        "id": 1,
        "title": "Nike Shoes",
        "image": "assets/shoes.png",
        "price": 120.0
      },
      {
        "id": 2,
        "title": "Headphones",
        "image": "assets/headphones.png",
        "price": 90.0
      },
    ];
  }
}