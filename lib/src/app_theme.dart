import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';

class AlphaColors {
  static const defaultDark = Color.fromRGBO(42, 42, 42, 1);
  static const backgroundDarkOn = Color(0x424242FF);
  static const backgroundLight = Color(0xFFFFFFFF);
  static const backgroundLightOn = Color(0xFFFFFFFF);

  static const secondaryDark = Color(0xFFFFFFdd);
  static const secondaryDarkOn = Color(0xFFFFFFFF);
  static const secondaryLight = Color(0x00000000);
  static const secondaryLightOn = Color(0x000000FF);
}

class TextColors {
  static const lightText = Color(0xFFFFFFFF);
  static const lightTextLabel = Color(0x757575FF);
  static const darkTextLabel = Color(0x757575FF);
  static const yellowTittle = Color(0xD1A918FF);
}

class BaseColors {
  static const baseYellow = Color(0xFFC107FF);
}

class ButtonColors {
  static const defaultYellowButton = Color.fromRGBO(255, 193, 7, 1);
}

ThemeData get lightTheme => ThemeData.light().copyWith(
    textTheme: TextTheme(
      button: TextStyle(fontFamily: 'Inter'),
    ),
    colorScheme: ColorScheme(
      primary: AlphaColors.backgroundLight,
      onPrimary: AlphaColors.backgroundLightOn,
      brightness: Brightness.light,
      background: AlphaColors.backgroundLight,
      secondary: AlphaColors.secondaryLight,
      onSecondary: AlphaColors.secondaryLightOn,
      error: const ColorScheme.light().error,
      surface: const ColorScheme.light().surface,
      onBackground: const ColorScheme.light().onBackground,
      onError: const ColorScheme.light().onError,
      onSurface: const ColorScheme.light().onSurface,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(ButtonColors.defaultYellowButton),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: ButtonColors.defaultYellowButton))),
        minimumSize: MaterialStateProperty.all(Size(150, 30)),
      ),
    ));

ThemeData get darkTheme => ThemeData.light().copyWith(
    colorScheme: ColorScheme(
      primary: AlphaColors.defaultDark,
      onPrimary: AlphaColors.backgroundDarkOn,
      brightness: Brightness.dark,
      background: AlphaColors.defaultDark,
      secondary: AlphaColors.defaultDark,
      onSecondary: AlphaColors.backgroundDarkOn,
      error: const ColorScheme.dark().error,
      surface: const ColorScheme.dark().surface,
      onBackground: const ColorScheme.dark().onBackground,
      onError: const ColorScheme.dark().onError,
      onSurface: const ColorScheme.dark().onSurface,
    ),
    errorColor: Colors.red,
    inputDecorationTheme:
        InputDecorationTheme(hintStyle: TextStyle(color: Colors.white)));
