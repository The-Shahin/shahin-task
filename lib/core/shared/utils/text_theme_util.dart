import 'package:flutter/material.dart';

extension TextThemeExtension on BuildContext {
  TextStyle? get displayLargeTextTheme => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayMediumTextTheme => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displaySmallTextTheme => Theme.of(this).textTheme.displaySmall;
}
