import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardResult extends StatelessWidget {
  CardResult(
      {this.weightResult,
      this.numberResult,
      this.descriptionResult,
      this.weightResultStyle});

  final String? weightResult;
  final String? numberResult;
  final String? descriptionResult;
  final TextStyle? weightResultStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          weightResult!.toUpperCase(),
          style: weightResultStyle,
        ),
        Text(
          numberResult!,
          style: kResultNumberStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: Text(
            descriptionResult!,
            style: kResultDescStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
