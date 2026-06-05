import 'package:books_app/core/utils/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserCredential>> signUp({
    required String emailAddress,
    required String password,
  });
  Future<Either<Failure, UserCredential>> logIn(
    {
    required String emailAddress,
    required String password,
  }
  );
}
