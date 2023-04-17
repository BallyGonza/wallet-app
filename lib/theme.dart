import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData walletAppTheme = ThemeData(
  primaryColor: Colors.white,
  textTheme: GoogleFonts.mavenProTextTheme(),
  appBarTheme: const AppBarTheme(
    color: appBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: appBackgroundColor,
);
