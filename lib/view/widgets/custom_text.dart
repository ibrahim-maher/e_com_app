import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.text,
    this.fontsize,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft, this.fontWeight = FontWeight.normal,
  }) : super(key: key);
  final String? text;
  final double? fontsize;
  final Color? color;
  final Alignment? alignment;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text!,
        style: TextStyle(fontSize: fontsize, color: color,fontWeight: fontWeight),
      ),
    );
  }
}
