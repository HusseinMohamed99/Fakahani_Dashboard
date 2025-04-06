import 'package:fakahani_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:fakahani_dashboard/features/orders/presentation/views/widgets/filter_section.dart';
import 'package:fakahani_dashboard/features/orders/presentation/views/widgets/orders_items_list_view.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key, required this.orders});

  final List<OrderEntity> orders;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const FilterSection(),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: OrdersItemsListView(orderModels: orders)),
        ],
      ),
    );
  }
}
