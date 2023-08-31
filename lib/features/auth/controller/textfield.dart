import 'package:animations/theme/theme.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key, required this.controller, required this.hintText});
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Pallete.whiteColor)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Pallete.blueColor,
              width: 3,
            ),
          ),
          contentPadding: const EdgeInsets.all(22)),
    );
  }
}
