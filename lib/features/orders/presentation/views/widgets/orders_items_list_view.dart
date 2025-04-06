import 'package:fakahani_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:fakahani_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrdersItemsListView extends StatelessWidget {
  const OrdersItemsListView({super.key, required this.orderModels});

  final List<OrderEntity> orderModels;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderModels.length,
      itemBuilder: (context, index) {
        return OrderItemWidget(orderModel: orderModels[index]);
      },
    );
  }
}
