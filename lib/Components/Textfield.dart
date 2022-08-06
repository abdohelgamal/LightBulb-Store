import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
 const CustomTextfield(
    this.hintText, {
    Key? key,
  }) : super(key: key);

 final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintTextDirection: TextDirection.rtl,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            fillColor: Colors.white,
            filled: true),
      ),
    );
  }
}
