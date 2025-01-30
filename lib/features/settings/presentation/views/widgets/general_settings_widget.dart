import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralSettingsWidget extends StatelessWidget {
  const GeneralSettingsWidget({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailing,
  });
  final String title, leadingIcon;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2,
      shape: const RoundedRectangleBorder(),
      child: ListTile(
        leading: SvgPicture.asset(leadingIcon),
        title: Text(
          title,
          style: TextStyleManager.semiBold13(context: context),
        ),
        trailing: trailing ?? const Icon(Icons.arrow_forward_ios),
      ),
    ).onlyPadding(
      bottomPadding: kPaddingSmallVertical.h,
    );
  }
}
