import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/style/ui_text_style.dart';

class UITheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: UIColor.gray,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: UITextStyle.headline2.copyWith(
        fontSize: 18,
        color: UIColor.black,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: UITextStyle.headline1,
      displayMedium: UITextStyle.headline2,
      displaySmall: UITextStyle.headline3,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: UIColor.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
