import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: kSizeDefaultWidth.w,
        height: kSizeDefaultHeight.h,
        duration: const Duration(milliseconds: 100),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isChecked ? ColorManager.primaryGreen : ColorManager.pureWhite,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50.w,
              color: isChecked ? Colors.transparent : ColorManager.lighterGrey,
            ),
            borderRadius: BorderRadius.circular(kBorderRadiusMedium),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(
                Assets.images.checkIcon,
              ).allPadding(
                vPadding: kPaddingSmallerVertical,
                hPadding: kPaddingSmallerHorizontal)
            : null,
      ),
    );
  }
}
