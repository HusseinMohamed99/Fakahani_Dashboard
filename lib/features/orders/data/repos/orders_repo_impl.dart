import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/helpers/enum/order_enum.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/networking/services/database_service.dart';
import 'package:fakahani_dashboard/core/networking/services/end_point.dart';
import 'package:fakahani_dashboard/features/orders/data/models/order_model.dart';
import 'package:fakahani_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:fakahani_dashboard/features/orders/domain/repos/orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseServices _dataService;

  OrdersRepoImpl(this._dataService);

  @override
  Stream<Either<Failure, List<OrderEntity>>> fetchOrders() async* {
    try {
      await for (var data
          in _dataService.streamData(path: BackendEndPoint.getOrders)) {
        List<OrderEntity> orders = (data as List<dynamic>)
            .map<OrderEntity>((e) => OrderModel.fromJson(e).toEntity())
            .toList();
        yield Right(orders);
      }
    } catch (e) {
      yield Left(ServerFailure('Failed to fetch orders'));
    }
  }

  @override
  Future<Either<Failure, void>> updateOrder(
      {required OrderStatusEnum status, required String orderID}) async {
    try {
      await _dataService.updateData(data: {
        'status': status.name,
      }, path: BackendEndPoint.updateOrder, documentId: orderID);
      return right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to update order'));
    }
  }
}
