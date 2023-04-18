import 'package:flutter/material.dart';

import 'constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: CustomText(
            text: 'Calculate Tip',
            fontSize: 25,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
