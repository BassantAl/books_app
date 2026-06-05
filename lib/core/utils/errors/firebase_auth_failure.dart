import 'package:books_app/core/utils/errors/errors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure({required super.errorMessage});
  factory FirebaseAuthFailure.fromFirebaseAuthException(
    FirebaseAuthException e,
  ) {
    switch (e.code) {
      case 'user-not-found':
        return FirebaseAuthFailure(
          errorMessage: 'No user found for that email.',
        );
      case 'wrong-password':
        return FirebaseAuthFailure(errorMessage: 'Wrong password provided.');
      case 'weak-password':
        return FirebaseAuthFailure(
          errorMessage: 'The password is too weak.',
        );
      case 'email-already-in-use':
        return FirebaseAuthFailure(errorMessage: 'This email is already in use.',);
      
      case 'invalid-email':
        return FirebaseAuthFailure(
          errorMessage: 'Invalid email address.',
        );

      case 'network-request-failed':
        return FirebaseAuthFailure(
          errorMessage: 'Network error. Check your connection.',
        );

      default:
        return FirebaseAuthFailure(
          errorMessage: e.message ?? 'An unexpected error occurred.',
        );

        
    }
  }
}
