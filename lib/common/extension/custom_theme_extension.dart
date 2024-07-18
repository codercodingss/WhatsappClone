import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extensions<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static CustomThemeExtension lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFFCBC3E3),
    greyColor: Coloors.greyLight,
    langbtnbackgroundcolor: Color(0xFF7F8FA),
    langbtnHighlightcolor: Color(0xFFE8E8ED),
    blueColor: Coloors.bluepurpleLight,
  );

  static CustomThemeExtension darkMode = CustomThemeExtension(
    circleImageColor: Coloors.purpleDark,
    greyColor: Coloors.greyDark,
    langbtnbackgroundcolor: Color(0xFF182229),
    langbtnHighlightcolor: Color(0xFFE09141A),
    blueColor: Coloors.bluepurpleDark,
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langbtnbackgroundcolor;
  final Color? langbtnHighlightcolor;

  CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langbtnbackgroundcolor,
    this.langbtnHighlightcolor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langbtnbackgroundcolor,
    Color? langbtnHighlightcolor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      blueColor: blueColor ?? this.blueColor,
      greyColor: greyColor ?? this.greyColor,
      langbtnHighlightcolor:
      langbtnHighlightcolor ?? this.langbtnHighlightcolor,
      langbtnbackgroundcolor:
      langbtnbackgroundcolor ?? this.langbtnbackgroundcolor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor:
      Color.lerp(circleImageColor, other.circleImageColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langbtnbackgroundcolor: Color.lerp(
          langbtnbackgroundcolor, other.langbtnbackgroundcolor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      langbtnHighlightcolor: Color.lerp(
          langbtnHighlightcolor, other.langbtnHighlightcolor, t),
    );
  }
}