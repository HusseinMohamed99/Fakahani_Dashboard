import 'dart:io';

import 'package:fakahani_dashboard/features/add_product/domain/entities/review_entity.dart';

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
    this.isOrganic = false,
    this.avgRating = 0,
    this.ratingCount = 0,
    required this.reviews,
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
  final bool isOrganic;
  final num avgRating;
  final int ratingCount;
  final List<ReviewEntity> reviews;
}
