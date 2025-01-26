import 'dart:io';

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
    );
  }
  AddProductInputModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.isFeaturedItem,
      required this.image,
      this.imageURL});

  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeaturedItem;
  final File image;
  String? imageURL;

  toJson() => {
        'name': name,
        'code': code,
        'description': description,
        'price': price,
        'isFeaturedItem': isFeaturedItem,
        'imageURL': imageURL,
      };
}
