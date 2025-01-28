import 'package:fakahani_dashboard/core/helpers/functions/app_logs.dart';
import 'package:fakahani_dashboard/core/networking/errors/auth_error_messages.dart';
import 'package:fakahani_dashboard/core/networking/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
    required AuthErrorMessages authErrorMessages,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      AppLogs.errorLog(
        'FirebaseAuthServices.signInWithEmailAndPassword Exception: ${e.toString()} "Error code: ${e.code}"',
        'Auth',
      );
      if (e.code == 'wrong-password') {
        AppLogs.errorLog(authErrorMessages.userNotFoundMessage ?? '', 'Auth');
        throw CustomException(
            message: authErrorMessages.userNotFoundMessage ?? '');
      } else if (e.code == 'user-not-found') {
        AppLogs.errorLog(authErrorMessages.userNotFoundMessage ?? '', 'Auth');
        throw CustomException(
            message: authErrorMessages.userNotFoundMessage ?? '');
      } else if (e.code == 'network-request-failed') {
        AppLogs.errorLog(
            authErrorMessages.internetConnectionMessage ?? '', 'Auth');
        throw CustomException(
            message: authErrorMessages.internetConnectionMessage ?? '');
      } else if (e.code == 'internal-error') {
        throw CustomException(
            message: authErrorMessages.internalErrorMessage ?? '');
      } else if (e.code == 'too-many-requests') {
        throw CustomException(
            message: authErrorMessages.tooManyRequestsMessage ?? '');
      } else if (e.code == 'user-disabled') {
        throw CustomException(
            message: authErrorMessages.userDisabledMessage ?? '');
      } else if (e.code == 'operation-not-allowed') {
        throw CustomException(
            message: authErrorMessages.operationNotAllowedMessage ?? '');
      } else if (e.code == 'invalid-email') {
        throw CustomException(
            message: authErrorMessages.invalidEmailMessage ?? '');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(
            message: authErrorMessages.userNotFoundMessage ?? '');
      } else {
        AppLogs.errorLog(authErrorMessages.generalErrorMessage ?? '', 'Auth');
        throw CustomException(
            message: authErrorMessages.generalErrorMessage ?? '');
      }
    } catch (e) {
      AppLogs.errorLog(
          'FirebaseAuthServices.signInWithEmailAndPassword Exception: ${e.toString()} ',
          'Auth');
      throw CustomException(
          message: authErrorMessages.generalErrorMessage ?? '');
    }
  }

  Future deleteUserAccount() async {
    await _firebaseAuth.currentUser!.delete();
  }

  bool isLoggedIn() {
    return _firebaseAuth.currentUser != null;
  }
}
