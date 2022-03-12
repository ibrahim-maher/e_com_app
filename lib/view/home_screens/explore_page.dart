import 'package:e_com_app/view/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/home_view_model.dart';
import '../widgets/custom_text.dart';
import 'details_page.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
      child: Column(
        children: [
          _searchfield(),
          const SizedBox(
            height: 35,
          ),
          const CustomText(
              text: 'categories', fontsize: 18, fontWeight: FontWeight.bold),
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
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => controller.notifier.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SizedBox(
              height: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.categoryModel.length,
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
                          child: Image.network(
                              controller.categoryModel[index].img.toString()),
                        ),
                        CustomText(
                          text: controller.categoryModel[index].name,
                        )
                      ],
                    );
                  }),
            ),
    );
  }

  Widget _listViewBestSelling() {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => controller.notifier.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 370,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.bsetselling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(DetailsPage(
                            model: controller.bsetselling[index],
                          ));
                        },
                        child: Padding(
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
                                        child: Image.network(controller
                                            .bsetselling[index].img
                                            .toString())),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CustomText(
                                text: controller.bsetselling[index].title,
                                fontsize: 16,
                                alignment: Alignment.bottomLeft,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CustomText(
                                text: controller.bsetselling[index].description,
                                alignment: Alignment.bottomRight,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CustomText(
                                text: "\$" +
                                    controller.bsetselling[index].price
                                        .toString(),
                                color: priColor,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ));
  }
}
