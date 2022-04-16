import 'package:firebase_auth/firebase_auth.dart';

class fb_auth {
  final FirebaseAuth _auth;
  fb_auth(this._auth);
  Stream<User?> get authStateChanges => _auth.authStateChanges();
  Future<String> logIn({String? emailID, String? password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailID!, password: password!);
      return "Logged In";
    } on FirebaseAuthException catch (e) {
      return e.message!;
    }
  }

  Future<String> signUp({String? emailID, String? password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailID!, password: password!);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message!;
    }
  }
}
