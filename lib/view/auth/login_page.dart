import 'package:e_com_app/view/auth/signin_page.dart';
import 'package:e_com_app/view/constants/constant.dart';
import 'package:e_com_app/view/widgets/custom_button.dart';
import 'package:e_com_app/view/widgets/custom_formfield.dart';
import 'package:e_com_app/view/widgets/custom_imgbutton.dart';
import 'package:e_com_app/view/widgets/custom_text.dart';
import 'package:e_com_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: 'Welcome,',
                    fontsize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'Sing in',
                    fontsize: 18,
                    color: priColor,
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
                validate: (value) {
                  if (value == null) {
                    print("this field can't be empty ");
                  }
                },
                hint: 'gahgsgg@gmail.com',
                text: 'Email',
              ),
              const SizedBox(
                height: 38,
              ),
              CustomTextField(
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
                onTap: () {},
                text: ' IN',
              ),
              const SizedBox(
                height: 28,
              ),
              const CustomText(
                text: '-OR-',
                alignment: Alignment.center,
                fontsize: 18,
              ),
              const SizedBox(
                height: 28,
              ),
              const CustomImgButton(
                text: 'Sign In with Facebook',
                img: 'assets/images/Path 76.png',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomImgButton(
                onTap: () {
                  controller.googlesigninmethod();
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
