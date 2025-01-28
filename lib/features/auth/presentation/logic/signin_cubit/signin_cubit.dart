import 'package:bloc/bloc.dart';
import 'package:fakahani_dashboard/core/networking/errors/auth_error_messages.dart';
import 'package:fakahani_dashboard/features/auth/domain/repo/auth_repo.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_state.dart';
import 'package:flutter/material.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  Future<void> signInWithEmailAndPassword(
    AuthErrorMessages authErrorMessages,
  ) async {
    emit(SigninLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      emailController.text.trim(),
      passwordController.text.trim(),
      authErrorMessages,
    );
    result.fold(
      (failure) => emit(SigninError(error: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
