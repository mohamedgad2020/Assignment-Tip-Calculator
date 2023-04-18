import 'package:flutter/material.dart';

import 'view/tip_calculatorbody.dart';
import 'view/widget/constance.dart';

void main() {
  runApp(const TipCalculator());
}

class TipCalculator extends StatelessWidget {
  const TipCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tip Calculator',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: 'Montserrat',
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text('Tip Calculator'),
          centerTitle: true,
          elevation: 0,
        ),
        body: const TipCalculatorBody(),
      ),
    );
  }
}
