import 'package:e_com_app/model/usermodel.dart';
import 'package:e_com_app/services/firestore_user.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../view/widgets/home_page_controll_view.dart';

class AuthViewModel extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSign = GoogleSignIn(scopes: ['email']);
  String? email, password, name;

  final Rxn<User> _user = Rxn<User>();
  get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(auth.authStateChanges());
  }

  void googlesigninmethod() async {
    final GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();
    final GoogleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: GoogleSignInAuthentication?.accessToken,
        idToken: GoogleSignInAuthentication?.idToken);

    await auth
        .signInWithCredential(credential)
        .then((user) => addUserTofirestore(user));

    Get.offAll(() => HomePageControllView());
  }

  void signwithemailandpassowrd() async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((user) => addUserTofirestore(user));

      Get.offAll(() => HomePageControllView());
    } catch (e) {
      String message = e.toString();
      Get.snackbar("error snak bar", message);
    }
  }

  void createaccount() async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((user) => addUserTofirestore(user));

      Get.offAll(() => HomePageControllView());
    } catch (e) {
      String message = e.toString();
      Get.snackbar("error snak bar", message);
    }
  }

  void addUserTofirestore(UserCredential user) async {
    await FireStoreUser().addUserToFirestore(UserModel(
      userId: user.user?.uid,
      email: user.user?.email,
      pic: '',
      name: name ?? user.user?.displayName,
    ));
  }
}
