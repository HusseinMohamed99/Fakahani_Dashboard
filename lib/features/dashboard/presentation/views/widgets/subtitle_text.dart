import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyleManager.semiBold13(context: context),
      textAlign: TextAlign.center,
    );
  }
}
