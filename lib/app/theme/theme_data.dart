import 'package:flutter/material.dart';

final themeData = ThemeData(
  primaryColor: Color(0xFF5D5FEF),
  secondaryHeaderColor: Color(0xFFF2F2F2),
  indicatorColor: Color(0xFFD6D6F3),
  backgroundColor: Colors.white,
  textTheme: const TextTheme(
      headline6: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      headline5: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', color: Color(0xFF5D5FEF)),
      headline2: TextStyle(fontSize: 28.0, fontFamily: 'Poppins'),
      headline1: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.normal,
          color: Color(0xFF828282)),
      bodyText2: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          color: Color(0xFF333333))),
);
