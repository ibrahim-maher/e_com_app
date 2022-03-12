import 'package:e_com_app/view/auth/signup_page.dart';
import 'package:e_com_app/view/constants/constant.dart';
import 'package:e_com_app/view/widgets/custom_button.dart';
import 'package:e_com_app/view/widgets/custom_formfield.dart';
import 'package:e_com_app/view/widgets/custom_imgbutton.dart';
import 'package:e_com_app/view/widgets/custom_text.dart';
import 'package:e_com_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home_page_controll_view.dart';

class LoginPage extends GetWidget<AuthViewModel> {
  LoginPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Welcome,',
                    fontsize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUpPage());
                    },
                    child: const CustomText(
                      text: 'Sing in',
                      fontsize: 18,
                      color: priColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomText(
                color: Colors.grey,
                text: 'sign in to continue ',
                fontsize: 15,
              ),
              const SizedBox(
                height: 48,
              ),
              CustomTextField(
                onSave: (value) {
                  controller.email = value;
                },
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  controller.email = value;
                  return null;
                },
                hint: 'gahgsgg@gmail.com',
                text: 'Email',
              ),
              const SizedBox(
                height: 38,
              ),
              CustomTextField(
                onSave: (value) {
                  controller.password = value;
                },
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  controller.password = value;
                  return null;
                },
                hint: '********',
                text: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: 'Forgot Password?',
                alignment: Alignment.bottomRight,
              ),
              const SizedBox(
                height: 20,
              ),
              Custombutton(
                onTap: () {
                  _formkey.currentState?.save();

                  if (_formkey.currentState!.validate()) {
                    controller.signwithemailandpassowrd();
                  }
                },
                text: 'SIGN IN',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: '-OR-',
                alignment: Alignment.center,
                fontsize: 18,
              ),
              const SizedBox(height: 20),
              const CustomImgButton(
                text: 'Sign In with Facebook',
                img: 'assets/images/Path 76.png',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomImgButton(
                onTap: () {
                  //   controller.googlesigninmethod();
                  Get.to(HomePageControllView());
                },
                text: 'Sign In with google',
                img: 'assets/images/icons8_Google_2.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
