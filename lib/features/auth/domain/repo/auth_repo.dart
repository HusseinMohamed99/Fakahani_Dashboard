import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/auth_error_messages.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
    AuthErrorMessages authErrorMessages,
  );

  Future insertUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String userID});

  Future saveUserData({required UserEntity user});
}
