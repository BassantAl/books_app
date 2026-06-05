import 'package:books_app/core/utils/errors/errors.dart';
import 'package:books_app/core/utils/errors/firebase_auth_failure.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/core/utils/services/firebase_auth_service.dart';
import 'package:books_app/features/auth/data/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {
  var instance = getIt.get<FirebaseAuthService>();
  @override
  Future<Either<Failure, UserCredential>> logIn({
    required String emailAddress,
    required String password,
  }) async {
    try {
      var result = await instance.logIn(
        emailAddress: emailAddress,
        password: password,
      );
      return right(result);
    } on FirebaseAuthException catch (e) {
      var error = FirebaseAuthFailure.fromFirebaseAuthException(e);
      return left(error);
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUp(
    {
    required String emailAddress,
    required String password,
  }
  )async {
    try {
      var result = await instance.signUp(
        emailAddress: emailAddress,
        password: password,
      );
      return right(result);
    } on FirebaseAuthException catch (e) {
      var error = FirebaseAuthFailure.fromFirebaseAuthException(e);
      return left(error);
    }
  }
}
