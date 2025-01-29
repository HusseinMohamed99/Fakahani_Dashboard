import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, required this.onPressed, this.textStyle});
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: kButtonHeightPrimary.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primaryGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault).r,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle ?? TextStyleManager.bold16(context: context),
        ),
      ),
    );
  }
}
