import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/responsive/spacing.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/features/dashboard/presentation/views/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '${context.localization.welcome} ',
                style: TextStyleManager.bold19(context: context),
              ),
              TextSpan(
                text: '${context.localization.to} ',
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.vibrantOrange,
                ),
              ),
              TextSpan(
                text: context.localization.faka,
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.primaryGreen,
                ),
              ),
              TextSpan(
                text: context.localization.hani,
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.vibrantOrange,
                ),
              ),
            ],
            style: TextStyleManager.bold23(context: context),
          ),
        ),
        verticalSpacing(kSpacingXLarge),
        SubtitleText(
          text: context.localization.welcome_subtitle_first,
        ),
        verticalSpacing(kSpacingSmall),
        SubtitleText(
          text: context.localization.welcome_subtitle_second,
        ),
      ],
    ).allPadding(
      vPadding: kPaddingLargeHorizontal.h,
      hPadding: kPaddingDefaultVertical.w,
    );
  }
}
