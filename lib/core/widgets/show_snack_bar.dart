import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: ColorManager.darkGrey,
      content: Text(
        text,
        style: TextStyleManager.bold13(context: context),
      ),
    ),
  );
}
