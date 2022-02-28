import 'package:e_com_app/view/auth/home_page.dart';
import 'package:e_com_app/view/auth/login_page.dart';
import 'package:e_com_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllView extends GetWidget<AuthViewModel> {
  const ControllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user != null)
          ? HomePage()
          : LoginPage();
    });
  }
}
