import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

ThemeData lightTheme = ThemeData(
  // fontFamily: 'Rubik',
  primaryColor: ColorResources.colorPrimary,
  brightness: Brightness.light,
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: ColorResources.whiteColor,
  ),
  cardColor: Colors.white,
  focusColor: ColorResources.focusColor,
  hintColor: ColorResources.hintColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorResources.colorPrimary,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
      textStyle: const TextStyle(color: Colors.black),
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
  textTheme: const TextTheme(
    button: TextStyle(color: Colors.white),
    headline1: TextStyle(
        fontWeight: FontWeight.w300, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline2: TextStyle(
        fontWeight: FontWeight.w400, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline3: TextStyle(
        fontWeight: FontWeight.w500, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline4: TextStyle(
        fontWeight: FontWeight.w600, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline5: TextStyle(
        fontWeight: FontWeight.w700, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline6: TextStyle(
        fontWeight: FontWeight.w800, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    caption: TextStyle(
        fontWeight: FontWeight.w900, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
    bodyText2: TextStyle(fontSize: 12.0),
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);
