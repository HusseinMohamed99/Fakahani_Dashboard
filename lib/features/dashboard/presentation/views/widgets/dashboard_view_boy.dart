import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DashboardViewBoy extends StatelessWidget {
  const DashboardViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: 'Add Data',
          onPressed: () {},
        ),
      ],
    ).allPadding(
      vPadding: kPaddingDefaultVertical,
      hPadding: kPaddingDefaultHorizontal,
    );
  }
}
