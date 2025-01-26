abstract class AddProductState {}

final class AddProductInitial extends AddProductState {}

final class AddProductLoading extends AddProductState {}

final class AddProductSuccess extends AddProductState {}

final class AddProductFailure extends AddProductState {
  AddProductFailure(this.message);
  final String message;
}
