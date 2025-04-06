part of 'fetch_orders_cubit.dart';

@immutable
sealed class FetchOrdersState {}

final class FetchOrdersInitial extends FetchOrdersState {}

final class FetchOrdersLoading extends FetchOrdersState {}

final class FetchOrdersSuccess extends FetchOrdersState {
  FetchOrdersSuccess({required this.orders});
  final List<OrderEntity> orders;
}

final class FetchOrdersFailure extends FetchOrdersState {
  FetchOrdersFailure(this.errMessage);
  final String errMessage;
}
