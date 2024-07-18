import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';
import 'package:mywhatsapp/common/extension/custom_theme_extension.dart';
ThemeData darkTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Coloors.backgroundDark,
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.purpleDark,
        foregroundColor: Coloors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}