import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          overlayColor: Color(0x40EB1555),
        ),
      ),
      home: InputPage(),
    );
  }
}
