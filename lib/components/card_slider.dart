import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardSlider extends StatelessWidget {
  CardSlider({this.label, this.numberSlider, this.unit, this.onSlide});

  final String? label;
  final int? numberSlider;
  final String? unit;
  final void Function(double)? onSlide;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label!,
          style: kLabelStyle,
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              numberSlider.toString(),
              style: kNumberStyle,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              unit!,
              style: kLabelStyle,
            ),
          ],
        ),
        Slider(
          value: numberSlider!.toDouble(),
          onChanged: onSlide,
          min: kCardHeightSliderMin,
          max: kCardHeightSliderMax,
        ),
      ],
    );
  }
}
