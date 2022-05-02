import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class DefaultTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.workSans().fontFamily,
        cardColor: white,
        canvasColor: grayLight,
        buttonColor: gray,
        accentColor: black,
        appBarTheme: AppBarTheme(
          color: white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          // textTheme: Theme.of(context).textTheme,
          titleTextStyle: TextStyle(color: black, fontSize: 18),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.workSans().fontFamily,
        cardColor: black,
        canvasColor: dark,
        buttonColor: button,
        accentColor: white,
        appBarTheme: AppBarTheme(
          color: black,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          // textTheme: Theme.of(context).textTheme,
          titleTextStyle: TextStyle(color: black, fontSize: 18),
        ),
      );

  //colors
  static Color grayLight = Vx.gray200;
  static Color gray = Vx.gray900;
  static Color white = Vx.white;
  static Color black = Vx.black;
  static Color dark = Vx.gray800;
  static Color button = Vx.gray500;
}
