import 'package:flutter/material.dart';
import 'package:social_media_dashboard/const.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    backgroundColor: whiteBG,
    cardColor: lightCardBg,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: lightText1,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      bodyText2: TextStyle(
        color: lightText2,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    backgroundColor: darkBG,
    cardColor: darkCardBG,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: darkText1,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      bodyText2: TextStyle(
        color: darkText2,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
    ),
  );
}
