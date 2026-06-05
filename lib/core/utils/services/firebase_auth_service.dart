import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserCredential> signUp({
    required String emailAddress,
    required String password,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    return credential;
  }

  Future<UserCredential> logIn({
    required String emailAddress,
    required String password,
  }) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    return credential;
  }

}
