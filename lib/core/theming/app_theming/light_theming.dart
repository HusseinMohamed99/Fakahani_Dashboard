import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData buildLightTheming() {
  return ThemeData(
    fontFamily: FontFamilyHelper.standardFont,
    scaffoldBackgroundColor: ColorManager.pureWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.pureWhite,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.pureWhite,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: ColorManager.pureWhite,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorManager.primaryGreen,
    ),
  );
}
