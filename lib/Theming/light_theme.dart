import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App_Colors.dart';

class Theming {
  static TextStyle bodyreg() {
    return GoogleFonts.elMessiri(
      fontSize: 30,
      color: Color(0xff242424),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle body() => GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.balckColor,
  );

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    navigationBarTheme:
        NavigationBarThemeData(backgroundColor: AppColors.primaryColor),
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      color: AppColors.primaryColor,
      thickness: 2,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.transparent,
      centerTitle: true,
    ),
  );

  static ThemeData drarkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
  );
}
