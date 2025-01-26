import 'dart:io';

class AddProductInputEntity {
  AddProductInputEntity(
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
}
