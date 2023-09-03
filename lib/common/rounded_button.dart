import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.onTap,
      required this.lable,
      required this.bgColor,
      required this.textColor});
  final VoidCallback onTap;
  final String lable;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        label: Text(
          lable,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
        backgroundColor: bgColor,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      ),
    );
  }
}
