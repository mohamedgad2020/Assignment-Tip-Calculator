import 'package:flutter/material.dart';
import 'package:tip_calculator/view/widget/constance.dart';
import 'package:tip_calculator/view/widget/custom_text.dart';

class SliderBar extends StatelessWidget {
  const SliderBar(
      {super.key,
      this.onChanged,
      required this.text,
      required this.labelSlider,
      required this.valueSlider});

  final void Function(double)? onChanged;
  final String text;
  final String labelSlider;
  final double valueSlider;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomText(text: text, fontSize: 18),
        Expanded(
          child: Slider(
            value: valueSlider,
            min: 0,
            max: 100,
            divisions: 20,
            label: labelSlider,
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor.withOpacity(0.2),
            onChanged: onChanged,
          ),
        ),
        const CustomText(text: '100%', fontSize: 18),
      ],
    );
  }
}
