import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/helpers/enum/order_enum.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/features/orders/domain/entities/order_entity.dart';

abstract class OrdersRepo {
  Stream<Either<Failure, List<OrderEntity>>> fetchOrders();

  Future<Either<Failure, void>> updateOrder(
      {required OrderStatusEnum status, required String orderID});
}
