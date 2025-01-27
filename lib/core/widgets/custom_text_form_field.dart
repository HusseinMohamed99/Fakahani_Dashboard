import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.textInputType,
    required this.controller,
    this.textInputAction,
    this.suffixIcon,
    this.isPassword,
    this.onSaved,
    this.validator,
    this.suffixIconOnTap,
    this.maxLines = 1,
  });
  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool? isPassword;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function()? suffixIconOnTap;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      obscuringCharacter: '*',
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      onSaved: onSaved,
      obscureText: isPassword ?? false,
      validator: validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return 'This field is required';
            }

            return null;
          },
      style: TextStyleManager.semiBold16(
        context: context,
        color: ColorManager.darkBlack,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.softWhite,
        hintText: hintText,
        hintStyle: TextStyleManager.bold13(context: context),
        contentPadding: EdgeInsets.symmetric(
          horizontal: kPaddingContentHorizontal.w,
          vertical: kPaddingContentVertical.h,
        ),
        suffixIcon: suffixIcon == null
            ? null
            : IconButton(
                onPressed: suffixIconOnTap,
                icon: suffixIcon!,
              ),
        border: buildOutlineBorder(),
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
        disabledBorder: buildOutlineBorder(),
        focusedErrorBorder: buildOutlineBorder(color: ColorManager.errorRed),
        errorBorder: buildOutlineBorder(color: ColorManager.errorRed),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadiusRounded).r,
      borderSide: BorderSide(
        width: 1.w,
        color: color ?? ColorManager.offWhite,
      ),
    );
  }
}
