import 'package:flutter/material.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/theme/colors.dart';

ThemeData appTheme() {
  var base = ThemeData(
      primaryColor: AppColors.primary,
      accentColor: AppColors.accent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: R.fontFamily.spartan);

  return base.copyWith(
      appBarTheme: base.appBarTheme.copyWith(
        elevation: 0.0,
        color: Colors.transparent,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.all(0.0),
          primary: Colors.black,
          visualDensity: VisualDensity.compact,
        ),
      ));
}
