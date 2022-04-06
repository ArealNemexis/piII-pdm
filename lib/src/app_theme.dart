import 'package:flutter/material.dart';

class AlphaColors {
  static const backgroundDark = Color(0x424242DD);
  static const backgroundDarkOn = Color(0x424242FF);
  static const backgroundLight = Color.fromRGBO(33, 33, 33, 1);
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

ThemeData get lightTheme => ThemeData.light().copyWith(
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
    );

ThemeData get darkTheme => ThemeData.light().copyWith(
      colorScheme: ColorScheme(
        primary: AlphaColors.backgroundDark,
        onPrimary: AlphaColors.backgroundDarkOn,
        brightness: Brightness.dark,
        background: AlphaColors.backgroundDark,
        secondary: AlphaColors.backgroundDark,
        onSecondary: AlphaColors.backgroundDarkOn,
        error: const ColorScheme.dark().error,
        surface: const ColorScheme.dark().surface,
        onBackground: const ColorScheme.dark().onBackground,
        onError: const ColorScheme.dark().onError,
        onSurface: const ColorScheme.dark().onSurface,
      ),
    );
