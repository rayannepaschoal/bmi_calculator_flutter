import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kBottomContainerHeight = 70.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomCardColor = Color(0xFFEB1555);
const kCardMaleIcon = FontAwesomeIcons.mars;
const kCardMaleLabel = 'MALE';
const kCardFemaleIcon = FontAwesomeIcons.venus;
const kCardFemaleLabel = 'FEMALE';
const kCardHeightLabel = 'HEIGHT';
const kCardHeightUnit = 'cm';
const kCardHeightSliderMin = 100.0;
const kCardHeightSliderMax = 250.0;
const kCardWeightLabel = 'WEIGHT';
const kCardAgeLabel = 'AGE';
const kButtonAddIcon = FontAwesomeIcons.plus;
const kButtonRemoveIcon = FontAwesomeIcons.minus;

const kLabelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kButtonStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const kResultNumberStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);

const kResultDescStyle = TextStyle(
  fontSize: 16.0,
);

const kResultWeightNormalStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF24D876),
);

const kResultWeightOverStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.red,
);

const kResultWeightUnderStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.yellow,
);
