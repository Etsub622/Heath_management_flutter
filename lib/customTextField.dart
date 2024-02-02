import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.maxLines = 1});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Color.fromARGB(115, 135, 132, 132), fontSize: 14),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(
              color: Colors.black26,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(
              color: Colors.black26,
            )),
        contentPadding: const EdgeInsets.all(8),
      ),
      maxLines: maxLines,
    );
  }
}
