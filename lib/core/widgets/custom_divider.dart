import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorManager.lighterGrey,
    );
  }
}
