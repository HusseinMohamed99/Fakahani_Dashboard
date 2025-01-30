import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AvatarImageWidget(),
        ),
      ],
    ).allPadding(
        vPadding: kPaddingDefaultVertical.h,
        hPadding: kPaddingDefaultHorizontal.w);
  }
}

class AvatarImageWidget extends StatelessWidget {
  const AvatarImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 89.h,
      child: Row(
        spacing: kSpacingXLarge.w,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 73.w,
                height: 73.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.imageProfileTest.path),
                    fit: BoxFit.fill,
                  ),
                  shape: const OvalBorder(),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 57.h,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  width: 40.w,
                  height: 40.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    shape: BoxShape.circle,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: ColorManager.pureWhite,
                        width: 1,
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(Assets.images.camera),
                ),
              ),
            ],
          ),
          Column(
            spacing: kSpacingSmaller.h,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'أحمد ياسر',
                style: TextStyleManager.bold13(context: context).copyWith(
                  color: ColorManager.darkBlack,
                ),
              ),
              Text(
                'mail@mail.com',
                style: TextStyleManager.regular13(context: context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
