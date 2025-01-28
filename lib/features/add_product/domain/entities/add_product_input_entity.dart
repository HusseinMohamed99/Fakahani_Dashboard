import 'dart:io';

class AddProductInputEntity {
  AddProductInputEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.isFeaturedItem,
    required this.image,
    this.imageURL,
    required this.expiryMonth,
    required this.numberOfCalories,
    required this.uintAmount,
  });

  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeaturedItem;
  final File image;
  String? imageURL;
  final int expiryMonth;
  final int numberOfCalories;
  final int uintAmount;
  final bool isOrganic = false;
  final num avgRating = 0;
  final int ratingCount = 0;
}
