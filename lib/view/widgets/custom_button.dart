import 'package:e_com_app/view/constants/constant.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class Custombutton extends StatelessWidget {
  const Custombutton(
      {Key? key,
      this.alignment = Alignment.center,
      this.color = Colors.white,
      this.text,
      this.onTap})
      : super(key: key);
  final Alignment? alignment;
  final Color? color;
  final String? text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: priColor,
        child: CustomText(
          alignment: alignment,
          color: color,
          text: text,
        ),
      ),
    );
  }
}
