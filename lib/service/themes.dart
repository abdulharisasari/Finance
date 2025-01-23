// state or feedback color
import 'package:flutter/widgets.dart';

const int errorColor = 0xFFFF3B3B;
const int warningColor = 0xFFFFCC00;
const int infoColor = 0xFF0063F7;
const int successColor = 0xFF06C270;

// dark color
const int darkColor1 = 0xFF333333;
const int darkColor2 = 0xFF5C5C5C;
const int darkColor3 = 0xFF999999;
const int darkColor4 = 0xFFD6D6D6;

// light color
const int lightColor1 = 0xFFCACACA;
const int lightColor2 = 0xFFDBDBDB;
const int lightColor3 = 0xFFEDEDED;
const int lightColor4 = 0xFFFFFFFF;

// primary color
const int primaryColor = 0xFF031A6E;

// secondary color
const int secondaryColor = 0xFFE6E9F1;
const int secondaryGrayColor = 0xFFEAE9E9;
const int secondaryBrownColor = 0xFFC58E5A;
const int secondaryRedColor = 0xFFC55A7A;

double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;
double textScale(BuildContext context) => MediaQuery.textScaleFactorOf(context);
