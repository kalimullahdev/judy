import 'package:flutter/material.dart';

class ColorResources {
  static const Color colorPrimary = Color(0xff7C42FF);
  static const Color underlineColor = Color(0xFFCCCCCC);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color blackColor = Colors.black;
  static const Color blueColor = colorPrimary;
  static const Color focusColor = Color(0xFFADC4C8);
  static const Color hintColor = Color(0xFF52575C);
  static const Color success = Color(0xff00CC96);
  static const Color greenColor = Color(0xff60BD9C);

  static const LinearGradient blueLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Color(0xff986EFF),
      Color(0xff6D5CFF),
    ],
  );
  // 60BD9C

  static const LinearGradient whiteLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Colors.white,
      Colors.white,
    ],
  );

  static const LinearGradient greenLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Color(0xff26B9D1),
      Color(0xff13C2B4),
    ],
  );
}
