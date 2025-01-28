import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class ItemCheckBox extends StatefulWidget {
  const ItemCheckBox(
      {super.key, required this.onTermsAccepted, required this.title});
  final ValueChanged<bool> onTermsAccepted;
  final String title;
  @override
  State<ItemCheckBox> createState() => _ItemCheckBoxState();
}

class _ItemCheckBoxState extends State<ItemCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title,
                style: TextStyleManager.semiBold13(
                  context: context,
                  color: ColorManager.darkBlack,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onTermsAccepted(value);
            setState(() {});
          },
        ),
      ],
    );
  }
}
