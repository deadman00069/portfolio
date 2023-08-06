import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextStyleLight {
  static final CustomTextStyleLight _instance =
      CustomTextStyleLight._internal();

  factory CustomTextStyleLight() {
    return _instance;
  }

  CustomTextStyleLight._internal();

  static TextStyle style58700 = TextStyle(
    fontSize: 58,
    fontWeight: FontWeight.w700,
    color: textColor,
  );

  static TextStyle style48700 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: textColor,
  );
  static TextStyle style32400 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: textColor,
  );

  static TextStyle style28500 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle style20500 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle style18300 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: textColor,
  );

  static TextStyle style18400 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: textColor,
  );

  static TextStyle style16400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: textColor,
  );

  static TextStyle style14300 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: textColor,
  );

  static TextStyle style12500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  // static get fontFamily => null;

  static get textColor => AppColors.color666666;
}
