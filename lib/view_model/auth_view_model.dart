import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSign = GoogleSignIn(scopes: ['email']);
  String? emial, password, name;
  void googlesigninmethod() async {
    final GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();
    final GoogleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: GoogleSignInAuthentication?.accessToken,
        idToken: GoogleSignInAuthentication?.idToken);

    UserCredential usercredential = await auth.signInWithCredential(credential);
  }

  void signwithemailandpassowrd() async {
    try {
      await auth.signInWithEmailAndPassword(email: emial!, password: password!);
    } catch (e) {
      String message = e.toString();
      Get.snackbar("error snak bar", message);
    }
  }
}
