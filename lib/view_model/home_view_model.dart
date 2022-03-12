import 'package:e_com_app/model/categorymodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../model/item_model.dart';
import '../services/home_services.dart';
import '../view/home_screens/acount_page.dart';
import '../view/home_screens/cart_page.dart';
import '../view/home_screens/explore_page.dart';

class HomeViewModel extends GetxController {
  HomeViewModel() {
    getCategory();
    getBsetselling();
  }

  ValueNotifier<bool> get notifier => _notifier;
  final ValueNotifier<bool> _notifier = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  final List<CategoryModel> _categoryModel = [];

  getCategory() async {
    _notifier.value = true;
    HomeServices().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(
            CategoryModel.fromJson(value[i].data() as Map<String, dynamic>));
        _notifier.value = false;
      }
      update();
    });
  }

  List<ItemModel> get bsetselling => _bsetselling;
  final List<ItemModel> _bsetselling = [];

  getBsetselling() async {
    _notifier.value = true;
    HomeServices().getBsetselling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _bsetselling
            .add(ItemModel.fromJson(value[i].data() as Map<String, dynamic>));
        _notifier.value = false;
      }
      update();
    });
  }

  final List<Widget> _currentScreen = [
    ExplorePage(),
    CartPage(),
    AcountPage(),
  ];
  get currentScreen => _currentScreen;

  int _currentIndex = 0;
  get currentIndex => _currentIndex;

  void changecurrentIndex(int selectedvalue) {
    _currentIndex = selectedvalue;

    update();
  }
}
