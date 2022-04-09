import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';

class AlphaColors {
  static const defaultDark = Color.fromRGBO(42, 42, 42, 1);
  static const backgroundDarkOn = Color(0x424242FF);
  static const backgroundLight = Color(0xFFFFFFFF);
  static const backgroundLightOn = Color.fromRGBO(0, 0, 0, 0.87);

  static const secondaryDark = Color(0xFFFFFFdd);
  static const secondaryDarkOn = Color(0xFFFFFFFF);
  static const secondaryLight = Color(0xFFFFFFFF);
  static const secondaryLightOn = Color(0x000000FF);
}

class TextColors {
  static const lightText = Color(0xFFFFFFFF);
  static const lightTextLabel = Color(0x757575FF);
  static const darkTextLabel = Color.fromRGBO(75, 75, 75, 1);
  static const yellowTittle = Color(0xD1A918FF);
}

class BaseColors {
  static const baseYellow = Color(0xFFC107FF);
  static const lightPrimaryColorBrightness = Color.fromRGBO(75, 75, 75, 1);
}

class ButtonColors {
  static const defaultYellowButton = Color.fromRGBO(255, 193, 7, 1);
}

ThemeData get lightTheme => ThemeData.light().copyWith(
    textTheme: TextTheme(
      button: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600),
    ),
    colorScheme: ColorScheme(
      primary: AlphaColors.backgroundLight,
      onPrimary: AlphaColors.backgroundLightOn,
      brightness: Brightness.light,
      secondary: AlphaColors.secondaryLight,
      onSecondary: AlphaColors.secondaryLightOn,
      error: const ColorScheme.light().error,
      surface: const ColorScheme.light().surface,
      background: AlphaColors.backgroundLight,
      onBackground: AlphaColors.defaultDark,
      onError: const ColorScheme.light().onError,
      onSurface: const ColorScheme.light().onSurface,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ButtonColors.defaultYellowButton,
          onPrimary: Colors.black87,
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20),
          ),
        )));

ThemeData get darkTheme => ThemeData.light().copyWith(
    textTheme: TextTheme(
      button: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600),
    ),
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      primary: AlphaColors.defaultDark,
      onPrimary: AlphaColors.backgroundDarkOn,
      brightness: Brightness.dark,
      background: AlphaColors.defaultDark,
      secondary: AlphaColors.defaultDark,
      onSecondary: BaseColors.lightPrimaryColorBrightness,
      error: const ColorScheme.dark().error,
      surface: const ColorScheme.dark().surface,
      onBackground: const ColorScheme.dark().onBackground,
      onError: const ColorScheme.dark().onError,
      onSurface: const ColorScheme.dark().onSurface,
    ),
    errorColor: Colors.red,
    inputDecorationTheme:
    InputDecorationTheme(hintStyle: TextStyle(color: Colors.white)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ButtonColors.defaultYellowButton,
          onPrimary: Colors.black,
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20),
          ),
        )));