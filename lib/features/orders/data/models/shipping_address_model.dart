import 'package:fakahani_dashboard/features/orders/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  ShippingAddressModel({
    this.name,
    this.phone,
    this.address,
    this.floor,
    this.city,
    this.email,
  });

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      name: json['name'],
      phone: json['phone'],
      address: json['address'],
      floor: json['floor'],
      city: json['city'],
      email: json['email'],
    );
  }
  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;
  String? floor;

  @override
  String toString() {
    return '$address $floor $city';
  }

  toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'floor': floor,
      'city': city,
      'email': email,
    };
  }

  toEntity() {
    return ShippingAddressEntity(
      name: name,
      phone: phone,
      address: address,
      floor: floor,
      city: city,
      email: email,
    );
  }
}
