class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String saleDate;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.saleDate,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      saleDate: json['saleDate'],
      imageUrl: json['imageUrl'],
    );
  }
}
