import 'package:fakahani_dashboard/core/helpers/extensions/navigation_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/core/widgets/custom_button.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardViewBoy extends StatelessWidget {
  const DashboardViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.screenWidth,
          height: context.screenHeight * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.images.backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 29.w,
                right: 29.w,
                child: SvgPicture.asset(
                  Assets.images.image,
                ),
              ),
            ],
          ),
        ),
        const WelcomeText(),
        const Spacer(),
        CustomButton(
          text: 'Get Started',
          onPressed: () {
            context.pushNamed(Routes.addProductView);
          },
        ).allPadding(
          vPadding: kPaddingLargeHorizontal.h,
          hPadding: kPaddingDefaultVertical.w,
        ),
      ],
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: kSpacingXLarge.h,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome ',
                style: TextStyleManager.bold19(context: context),
              ),
              TextSpan(
                text: 'to ',
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.vibrantOrange,
                ),
              ),
              TextSpan(
                text: 'Faka',
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.primaryGreen,
                ),
              ),
              TextSpan(
                text: 'hani',
                style: TextStyleManager.bold19(context: context).copyWith(
                  color: ColorManager.vibrantOrange,
                ),
              ),
            ],
            style: TextStyleManager.bold23(context: context),
          ),
        ),
        Text(
          '''We’re excited to see what you’re adding! Fill in the details below, and don’t forget
           to upload some great images.
        Your product will be live and ready for customers in just a few steps.''',
          style: TextStyleManager.semiBold13(context: context),
          textAlign: TextAlign.center,
        ),
      ],
    ).allPadding(
      vPadding: kPaddingLargeHorizontal.h,
      hPadding: kPaddingDefaultVertical.w,
    );
  }
}
