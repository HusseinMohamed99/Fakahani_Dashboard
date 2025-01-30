import 'package:fakahani_dashboard/core/helpers/extensions/navigation_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(BuildContext context,
    {VoidCallback? onBackPress, required String title}) {
  return AppBar(
    backgroundColor: ColorManager.stepperColorBackground,
    elevation: 0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: onBackPress ??
          () {
            context.pop();
          },
      child: Icon(
        Icons.arrow_back_ios_new,
        color: ColorManager.pureBlack,
        size: kIconSizeDefault.sp,
      ),
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyleManager.bold19(context: context),
    ),
  );
}
