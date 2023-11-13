import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/card_result.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultTitle,
      required this.resultDescription,
      required this.resultStyle});

  final String bmiResult;
  final String resultTitle;
  final String resultDescription;
  final TextStyle resultStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Your result',
                style: kNumberStyle,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: CardResult(
                weightResult: resultTitle,
                numberResult: bmiResult,
                descriptionResult: resultDescription,
                weightResultStyle: resultStyle,
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
