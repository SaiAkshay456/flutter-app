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
    String message = "";
    if (e.code == 'weak-password') {
      print('The password is too weak.');
      message = 'The password is too weak.';
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      message = 'The account already exists for that email.';
    } else {
      print('Firebase Auth Error: ${e.code}');
      message = 'Firebase Auth Error: ${e.code}';
    }
    return null;
  } catch (e) {
    print(e);
    return null;
  }
}
