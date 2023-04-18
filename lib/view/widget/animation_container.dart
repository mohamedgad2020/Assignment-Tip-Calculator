import 'package:flutter/material.dart';

import 'constance.dart';
import 'custom_text.dart';

class AnimationContainer extends StatelessWidget {
  const AnimationContainer({
    super.key,
    required this.textResult1,
    required this.textResult2,
  });

  final String textResult1;
  final String textResult2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const CustomText(
            text: 'Tip Amount:',
          ),
          const SizedBox(height: 10),
          CustomText(
            text: textResult1,
            fontSize: 30,
          ),
          const SizedBox(height: 20),
          const CustomText(
            text: 'Total Amount:',
          ),
          const SizedBox(height: 10),
          CustomText(
            text: textResult2,
            fontSize: 30,
          ),
        ],
      ),
    );
  }
}
