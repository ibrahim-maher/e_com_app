import 'package:e_com_app/view/widgets/custom_button.dart';
import 'package:e_com_app/view/widgets/custom_formfield.dart';
import 'package:e_com_app/view/widgets/custom_text.dart';
import 'package:e_com_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetWidget<AuthViewModel> {
  SignUpPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                text: 'Sign Up',
                fontsize: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  controller.name = value;
                  return null;
                },
                hint: 'ibrahim',
                text: 'name',
              ),
              const SizedBox(
                height: 38,
              ),
              CustomTextField(
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
                height: 38,
              ),
              Custombutton(
                onTap: () {
                  if (_key.currentState!.validate()) {
                    controller.createaccount();
                  }
                },
                text: 'Sign Up',
              )
            ],
          ),
        ),
      ),
    );
  }
}
