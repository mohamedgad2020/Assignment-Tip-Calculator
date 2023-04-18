import 'package:flutter/material.dart';
import 'package:tip_calculator/view/widget/animation_container.dart';
import 'package:tip_calculator/view/widget/custom_button.dart';
import 'package:tip_calculator/view/widget/custom_textfield.dart';

import 'widget/custom_text.dart';
import 'widget/slider_bar.dart';

class TipCalculatorBody extends StatefulWidget {
  const TipCalculatorBody({super.key});

  @override
  State<TipCalculatorBody> createState() => _TipCalculatorBodyState();
}

class _TipCalculatorBodyState extends State<TipCalculatorBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  double _billAmount = 0.0;
  double _tipPercentage = 15.0;
  double _tipAmount = 0.0;
  double _totalAmount = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _calculateTipAmount() {
    setState(() {
      _tipAmount = _billAmount * _tipPercentage / 100;
      _totalAmount = _billAmount + _tipAmount;
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20),
            const CustomText(text: 'Enter Bill Amount:'),
            const SizedBox(height: 10),
            CustomTextField(
              onChanged: (value) {
                setState(() {
                  if (value.isNotEmpty) {
                    _billAmount = double.tryParse(value) ?? 0.0;
                  } else {
                    _billAmount = 0.0;
                  }
                });
              },
            ),
            const SizedBox(height: 20),
            const CustomText(
              text: 'Select Tip Percentage:',
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            SliderBar(
              valueSlider: _tipPercentage,
              text: '${_tipPercentage.toInt()}%',
              labelSlider: '${_tipPercentage.round()}%',
              onChanged: (value) {
                setState(() {
                  _tipPercentage = value;
                });
              },
            ),
            CustomButton(
              onPressed: _calculateTipAmount,
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: 1.0 + 0.2 * _animation.value,
                  child: child,
                );
              },
              child: AnimationContainer(
                textResult1: '\$${_tipAmount.toStringAsFixed(2)}',
                textResult2: '\$${_totalAmount.toStringAsFixed(2)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
