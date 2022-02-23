import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSign = GoogleSignIn();
  void googlesigninmethod() async {
    final GoogleSignInAccount? googeuseracc = await googleSign.signIn();
  }
}
