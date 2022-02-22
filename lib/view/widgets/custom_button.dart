import 'package:e_com_app/view/constants/constant.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      this.alignment = Alignment.center,
      this.color = Colors.white,
      this.text})
      : super(key: key);
  final Alignment? alignment;
  final Color? color;
  final Text? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: priColor,
      child: CustomText(
        alignment: alignment,
        color: color,
        text: text,
      ),
    );
  }
}
