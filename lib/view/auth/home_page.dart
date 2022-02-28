import 'package:e_com_app/view/auth/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
              onPressed: () {
                _auth.signOut();
                Get.offAll(LoginPage());
              },
              child: const Text("ssssssssss"))),
    );
  }
}
