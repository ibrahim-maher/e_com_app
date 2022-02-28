import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.text,
    this.hint,
    this.validate,
    this.onSave,
    this.onsave,
  }) : super(key: key);
  final String? text;
  final String? hint;
  final Function? onSave;
  final String? Function(String?)? validate;
  final String? Function(String?)? onsave;

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
          onSaved: onsave,
          validator: validate,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.white),
        ),
      ],
    );
  }
}
