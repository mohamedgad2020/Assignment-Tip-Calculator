import 'package:flutter/material.dart';
import 'package:tip_calculator/view/widget/constance.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.onChanged});
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'Enter bill amount',
        border: OutlineInputBorder(),
      ),
      style: const TextStyle(
        fontSize: 25,
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
      onChanged: onChanged,
    );
  }
}
