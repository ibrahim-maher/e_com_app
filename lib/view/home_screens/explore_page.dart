
import 'package:e_com_app/view/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/home_view_model.dart';
import '../widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> names = ["aa", "bb", "aa", "bb", "aa", "bb"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomNavigationBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
          child: Column(
            children: [
              _searchfield(),
              const SizedBox(
                height: 35,
              ),
              const CustomText(
                  text: 'categories',
                  fontsize: 18,
                  fontWeight: FontWeight.bold),
              _listViewcategories(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                      text: "Best selling ",
                      fontsize: 18,
                      fontWeight: FontWeight.bold),
                  CustomText(
                    text: "See all  ",
                    fontsize: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              _listViewBestSelling()
            ],
          ),
        ));
  }

  Container _searchfield() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: TextFormField(
        decoration: const InputDecoration(
            border: InputBorder.none, prefixIcon: Icon(Icons.search_rounded)),
      ),
    );
  }

  Widget _listViewcategories() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: names.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 60,
                  width: 60,
                  child: Image.asset("assets/images/Icon_Mens Shoe.png"),
                ),
                CustomText(
                  text: names[index],
                )
              ],
            );
          }),
    );
  }

  Widget _listViewBestSelling() {
    return SizedBox(
      height: 370,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: names.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 220,
                            child: Image.asset("assets/images/Image.png")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text: 'BeoPlay Speaker',
                    fontsize: 16,
                    alignment: Alignment.bottomLeft,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text: 'Bang and Olufsen',
                    alignment: Alignment.bottomRight,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text: '\$755',
                    color: priColor,
                  )
                ],
              ),
            );
          }),
    );
  }
  Widget _bottomNavigationBar() {

    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller)=>BottomNavigationBar(
            currentIndex: controller.currentIndex,
        onTap: (index)=>controller.changecurrentIndex(index),
        items: [
          BottomNavigationBarItem(
              activeIcon: Text('Explore'),
              label: "",
              icon: Image.asset(
                "assets/images/Icon_Explore.png",
                width: 20,
                fit: BoxFit.contain,
              )),
          BottomNavigationBarItem(
              activeIcon: Text('Cart'),
              label: "",
              icon: Image.asset(
                "assets/images/Path 2.png",
                width: 20,
                fit: BoxFit.contain,
              )), BottomNavigationBarItem(
              activeIcon: Text('acount'),
              label: "",
              icon: Image.asset(
                "assets/images/Icon_User.png",
                width: 20,
                fit: BoxFit.contain,
              )),
        ]));}
}
