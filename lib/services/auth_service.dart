import 'package:aeroplane/models/user_model.dart';
import 'package:aeroplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      /** save to authentication */
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      /** save to firestore */
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 280000000,
      );

      await UserService().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      throw e;
    }
  }

  Future<String?> signIn({required email, required password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user?.uid;
    } catch (e) {
      throw e;
    }
  }
}
