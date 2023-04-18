import 'package:flutter/material.dart';
import 'package:tip_calculator/view/widget/constance.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.textColor = kPrimaryColor,
  });
  final Color textColor;
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
