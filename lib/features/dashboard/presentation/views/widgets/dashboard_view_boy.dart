import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/navigation_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/widgets/custom_button.dart';
import 'package:fakahani_dashboard/features/dashboard/presentation/views/widgets/welcome_text.dart';
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
              Positioned(
                top: context.screenHeight * 0.06,
                right: context.screenWidth * 0.04,
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: ColorManager.lighterGreen,
                  child: IconButton(
                    icon: Icon(
                      Icons.settings_outlined,
                      size: 24.sp,
                    ),
                    onPressed: () {
                      context.pushNamed(Routes.settingsView);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const WelcomeText(),
        const Spacer(),
        Column(
          spacing: kPaddingDefaultVertical.h,
          children: [
            CustomButton(
              text: context.localization.start_now,
              onPressed: () {
                context.pushNamed(Routes.addProductView);
              },
            ),CustomButton(
              text: context.localization.view_orders,
              onPressed: () {
                context.pushNamed(Routes.ordersView);
              },
            ),
            
          ],
        ).allPadding(
              vPadding: kPaddingLargeHorizontal.h,
              hPadding: kPaddingDefaultVertical.w,
            ),
      ],
    );
  }
}
