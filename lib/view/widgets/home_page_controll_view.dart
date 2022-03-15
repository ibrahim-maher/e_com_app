import 'package:e_com_app/view/home_screens/explore_page.dart';
import 'package:e_com_app/view/auth/login_page.dart';
import 'package:e_com_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/home_view_model.dart';

class HomePageControllView extends GetWidget<AuthViewModel> {
  const HomePageControllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        body: controller.currentScreen[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: (index) => controller.changecurrentIndex(index),
            //klhsdfkjashdkfjhsdfsdfsdfsdfsdfsdfasdf
            items: [
              BottomNavigationBarItem(
                  activeIcon: const Text('Explore'),
                  label: "",
                  icon: Image.asset(
                    "assets/images/Icon_Explore.png",
                    width: 20,
                    fit: BoxFit.contain,
                  )),
              BottomNavigationBarItem(
                  activeIcon: const Text('Cart'),
                  label: "",
                  icon: Image.asset(
                    "assets/images/Path 2.png",
                    width: 20,
                    fit: BoxFit.contain,
                  )),
              BottomNavigationBarItem(
                  activeIcon: const Text('acount'),
                  label: "",
                  icon: Image.asset(
                    "assets/images/Icon_User.png",
                    width: 20,
                    fit: BoxFit.contain,
                  )),
            ]),
      ),
    );
  }
}
