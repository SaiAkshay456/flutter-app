import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
Future<User?> authSignUp(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    throw e.message ?? 'Authentication failed';
  } catch (e) {
    print(e);
    return null;
  }
}

authSignIn(String email, String password) async {
  try {
    UserCredential userCred = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCred.user;
  } catch (err) {
    print(err);
    return null;
  }
}
