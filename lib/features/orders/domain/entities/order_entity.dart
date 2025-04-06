import 'package:fakahani_dashboard/core/helpers/enum/order_enum.dart';
import 'package:fakahani_dashboard/features/orders/domain/entities/order_product_entity.dart';
import 'package:fakahani_dashboard/features/orders/domain/entities/shipping_address_entity.dart';

class OrderEntity {
  OrderEntity(
      {required this.totalPrice,
      required this.uId,
      required this.orderID,
      required this.status,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});
  final double totalPrice;
  final String uId;
  final String orderID;
  final ShippingAddressEntity shippingAddressModel;
  final List<OrderProductEntity> orderProducts;
  final String paymentMethod;
  final OrderStatusEnum status;
}

// payment method
