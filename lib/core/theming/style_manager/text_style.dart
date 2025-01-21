import 'package:fakahani_dashboard/core/helpers/responsive/responsive_font_size.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/font_family.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/font_size.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/font_weight.dart';
import 'package:flutter/material.dart';

abstract class TextStyleManager {
  static TextStyle bold28({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureBlack,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s28),
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle regular26({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureBlack,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s26),
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle regular22({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureBlack,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s22),
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle bold23({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.pureBlack,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s23),
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle bold16({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureWhite,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s16),
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle semiBold16({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.pureWhite,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s16),
      fontWeight: FontWeightHelper.semiBold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle regular16({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureWhite,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s16),
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle bold19({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.darkBlack,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s19),
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle medium15({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.pureWhite,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s15),
      fontWeight: FontWeightHelper.medium,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle bold13({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.mediumGrey,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s13),
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle semiBold13({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.darkGrey,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s13),
      fontWeight: FontWeightHelper.semiBold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle regular13({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.darkGrey,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s13),
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle semiBold11({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.darkGrey,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s11),
      fontWeight: FontWeightHelper.semiBold,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }

  static TextStyle regular11({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.darkGrey,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeHelper.s11),
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.standardFont,
    );
  }
}
