import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

ThemeData walletAppTheme = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: appBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: appBackgroundColor,
);
