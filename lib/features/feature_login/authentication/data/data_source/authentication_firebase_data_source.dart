import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationFirebaseDataSource{
  final FirebaseAuth _firebaseAuth;
  AuthenticationFirebaseDataSource({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  Stream<User?> getAuthStates() {
    return _firebaseAuth.authStateChanges();
  }

  Future<User?> login({
    required AuthCredential credential,
  }) async {
    UserCredential userCredential =
    await _firebaseAuth.signInWithCredential(credential);
    return userCredential.user;
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}