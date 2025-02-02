import 'dart:io';

import 'package:fakahani_dashboard/features/add_product/data/models/review_model.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

class AddProductInputModel {
  factory AddProductInputModel.fromEntity(
      AddProductInputEntity addProductInputEntity) {
    return AddProductInputModel(
      name: addProductInputEntity.name,
      code: addProductInputEntity.code,
      description: addProductInputEntity.description,
      price: addProductInputEntity.price,
      isFeaturedItem: addProductInputEntity.isFeaturedItem,
      image: addProductInputEntity.image,
      imageURL: addProductInputEntity.imageURL,
      expiryMonth: addProductInputEntity.expiryMonth,
      numberOfCalories: addProductInputEntity.numberOfCalories,
      uintAmount: addProductInputEntity.uintAmount,
      isOrganic: addProductInputEntity.isOrganic,
      avgRating: addProductInputEntity.avgRating,
      ratingCount: addProductInputEntity.ratingCount,
      reviews:
          addProductInputEntity.reviews.map(ReviewModel.fromEntity).toList(),
    );
  }
  AddProductInputModel({
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
    this.sellingCount = 0,
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
  final List<ReviewModel> reviews;
  final int sellingCount;

  toJson() => {
        'name': name,
        'code': code,
        'description': description,
        'price': price,
        'isFeaturedItem': isFeaturedItem,
        'imageURL': imageURL,
        'expiryMonth': expiryMonth,
        'numberOfCalories': numberOfCalories,
        'uintAmount': uintAmount,
        'isOrganic': isOrganic,
        'avgRating': avgRating,
        'ratingCount': ratingCount,
        'reviews': reviews.map((e) => e.toJson()).toList(),
        'sellingCount': sellingCount,
      };
}
