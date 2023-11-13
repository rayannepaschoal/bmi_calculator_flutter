import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';

class CardButton extends StatelessWidget {
  CardButton({this.label, this.pressRemove, this.pressAdd, this.numberPick});

  final String? label;
  final void Function()? pressRemove;
  final void Function()? pressAdd;
  final int? numberPick;

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
        Text(
          numberPick!.toString(),
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(icon: kButtonRemoveIcon, onPress: pressRemove),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: kButtonAddIcon,
              onPress: pressAdd,
            ),
          ],
        ),
      ],
    );
  }
}
