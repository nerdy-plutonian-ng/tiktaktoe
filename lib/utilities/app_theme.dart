import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    textTheme: lightTextTheme,
    backgroundColor: cultured,
    scaffoldBackgroundColor: cultured,
    colorScheme: lightColorScheme,
    cardColor: Colors.white,
    errorColor: Colors.red,
  );
}

ThemeData darkTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      textTheme: darkTextTheme,
      backgroundColor: darkJungleGreen,
      scaffoldBackgroundColor: darkJungleGreen,
      colorScheme: darkColorScheme,
      cardColor: pewterBlue,
      errorColor: Colors.redAccent,
  );
}

const lightTextTheme = TextTheme(labelLarge: TextStyle(fontFamily: 'Splash'));

const darkTextTheme = TextTheme(labelLarge: TextStyle(fontFamily: 'Splash'));

const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: blackCoral,
    onPrimary: Colors.white,
    secondary: pewterBlue,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: cultured,
    onBackground: darkJungleGreen,
    surface: Colors.white,
    onSurface: Colors.black);

const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: cadetBlueCrayola,
    onPrimary: Colors.black,
    secondary: pewterBlue,
    onSecondary: Colors.white,
    error: Colors.green,
    onError: Colors.white,
    background: darkJungleGreen,
    onBackground: Colors.white,
    surface: pewterBlue,
    onSurface: Colors.white);
