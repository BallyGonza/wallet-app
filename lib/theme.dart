import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/data/constants/constants.dart';
import 'package:wallet_app/data/data.dart';

ThemeData walletAppTheme = ThemeData(
  scaffoldBackgroundColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor).copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    surfaceTint: primaryColor,
  ),
  primaryColor: primaryColor,
  fontFamily: 'Maven Pro',
  textTheme: GoogleFonts.mavenProTextTheme(
    const TextTheme(
      displaySmall: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Maven Pro',
    ),
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: accentColor,
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.transparent,
    thickness: 0.5,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    elevation: 0,
    color: secondaryColor,
  ),
  cardColor: Colors.transparent,
);
