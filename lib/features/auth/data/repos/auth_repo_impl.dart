import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/helpers/constants/keys.dart';
import 'package:fakahani_dashboard/core/networking/cache/caching_helper.dart';
import 'package:fakahani_dashboard/core/networking/errors/auth_error_messages.dart';
import 'package:fakahani_dashboard/core/networking/errors/exceptions.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/networking/services/database_service.dart';
import 'package:fakahani_dashboard/core/networking/services/end_point.dart';
import 'package:fakahani_dashboard/core/networking/services/firebase_auth_services.dart';
import 'package:fakahani_dashboard/features/auth/data/models/user_model.dart';
import 'package:fakahani_dashboard/features/auth/domain/entities/user_entity.dart';
import 'package:fakahani_dashboard/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({
    required this.firebaseAuthServices,
    required this.databaseServices,
  });
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseServices databaseServices;

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
    AuthErrorMessages authErrorMessages,
  ) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
        authErrorMessages: authErrorMessages,
      );
      var userEntity = await getAdminData(userID: user.uid);
      await saveUserData(user: userEntity);
      return Right(
        userEntity,
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      return Left(
        ServerFailure(authErrorMessages.generalErrorMessage ?? ''),
      );
    }
  }

  Future<void> checkIfUserExists(UserModel userEntity, User user) async {
    var isUserExists = await databaseServices.checkIfDocumentExists(
      path: BackendEndPoint.isUserExists,
      documentID: userEntity.uId,
    );
    if (isUserExists) {
      await getAdminData(userID: user.uid);
    } else {
      await insertUserData(user: userEntity);
    }
  }

  @override
  Future insertUserData({required UserEntity user}) async {
    await databaseServices.addData(
      path: BackendEndPoint.insertUserData,
      data: UserModel.fromEntity(user).toMap(),
      documentID: user.uId,
    );
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthServices.deleteUserAccount();
    }
  }

  @override
  Future<UserEntity> getAdminData({required String userID}) async {
    var userData = await databaseServices.getData(
      path: BackendEndPoint.getAdminData,
      documentID: userID,
    );
    return UserModel.fromJson(userData);
  }

  Future<void> saveUserToken(String token) async {
    await CachingHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await saveUserToken(user.uId);
    await CachingHelper.setData(SharedPrefKeys.userData, jsonData);
  }
}
