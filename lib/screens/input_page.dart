import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/card_icon.dart';
import 'package:bmi_calculator/components/card_slider.dart';
import 'package:bmi_calculator/components/card_button.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/calculator.dart';

enum CardGender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  CardGender? selectedGender;
  int height = 170;
  int weight = 70;
  int age = 20;

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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: selectedGender == CardGender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      icon: kCardMaleIcon,
                      label: kCardMaleLabel,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = CardGender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: selectedGender == CardGender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      icon: kCardFemaleIcon,
                      label: kCardFemaleLabel,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = CardGender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: CardSlider(
                label: kCardHeightLabel,
                numberSlider: height,
                unit: kCardHeightUnit,
                onSlide: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: CardButton(
                      label: kCardWeightLabel,
                      numberPick: weight,
                      pressRemove: () {
                        setState(() {
                          weight--;
                        });
                      },
                      pressAdd: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: CardButton(
                      label: kCardAgeLabel,
                      numberPick: age,
                      pressRemove: () {
                        setState(() {
                          age--;
                        });
                      },
                      pressAdd: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onPress: () {
              Calculator calc = Calculator(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultTitle: calc.getResultTitle(),
                    resultDescription: calc.getResultDescription(),
                    resultStyle: calc.getResultStyle(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
