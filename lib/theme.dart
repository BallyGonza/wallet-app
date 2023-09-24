import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/data/data.dart';

ThemeData walletAppTheme = ThemeData(
  primaryColor: Colors.white,
  textTheme: GoogleFonts.mavenProTextTheme(),
  appBarTheme: const AppBarTheme(
    color: appBackgroundColor,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: appBackgroundColor,
);
