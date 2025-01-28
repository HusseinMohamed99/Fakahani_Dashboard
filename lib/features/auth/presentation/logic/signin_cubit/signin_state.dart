import 'package:fakahani_dashboard/features/auth/domain/entities/user_entity.dart';

abstract class SigninState {}

class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninSuccess extends SigninState {
  SigninSuccess({required this.userEntity});
  final UserEntity userEntity;
}

class SigninError extends SigninState {
  SigninError({required this.error});
  final String error;
}
