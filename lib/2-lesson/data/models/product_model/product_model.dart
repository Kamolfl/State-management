import 'rating_model.dart';

class ProductModel {
  // "id": 1,
  // "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  // "price": 109.95,
  // "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  // "category": "men's clothing",
  // "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  // "rating": {
  // "rate": 3.9,
  // "count": 120
  // }

  int id;
  String title;
  num price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      price: json['price'] ?? 0,
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      image: json['image'] ?? '',
      rating: RatingModel.fromJson(json['rating'] ?? {}),
    );
  }
}
