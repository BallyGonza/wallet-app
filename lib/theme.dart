import 'package:flutter/material.dart';

ThemeData walletAppTheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Color(0xff1E1E1E),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: const Color(0xff1E1E1E),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      fontSize: 36.0,
      fontStyle: FontStyle.italic,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontFamily: 'Hind',
    ),
  ),
);
