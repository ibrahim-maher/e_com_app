import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.text,
    this.hint,
  }) : super(key: key);
  final String? text;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: const TextStyle(fontSize: 20),
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.white),
        ),
      ],
    );
  }
}
