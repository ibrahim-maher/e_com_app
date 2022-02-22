import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomImgButton extends StatelessWidget {
  const CustomImgButton({Key? key, this.text, this.img}) : super(key: key);
  final String? text;
  final String? img;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(img!),
          const SizedBox(
            width: 80,
          ),
          CustomText(
            text: text,
            alignment: Alignment.center,
            color: Colors.black,
            fontsize: 14,
          )
        ],
      ),
    );
  }
}
