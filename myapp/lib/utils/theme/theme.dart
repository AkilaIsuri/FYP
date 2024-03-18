import 'package:flutter/material.dart';
import 'package:myapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:myapp/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.LightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
  );

  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.DarkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.DarkElevatedButtonTheme,
  );
}
