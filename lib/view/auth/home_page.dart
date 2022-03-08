import 'package:e_com_app/view/constants/constant.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> names = ["aa", "bb", "aa", "bb", "aa", "bb"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              label: "Explore",
              icon: Image.asset(
                "assets/images/Image.png",
                width: 20,
                fit: BoxFit.contain,
              )),
          BottomNavigationBarItem(
              label: "Cart ", icon: Image.asset('assets/images/Icon_User.png')),
        ]),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
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
                    height: 15,
                  ),
                  CustomText(
                    text: 'BeoPlay Speaker',
                    fontsize: 16,
                    alignment: Alignment.bottomLeft,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: 'Bang and Olufsen',
                    alignment: Alignment.bottomRight,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(
                    height: 15,
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
}
