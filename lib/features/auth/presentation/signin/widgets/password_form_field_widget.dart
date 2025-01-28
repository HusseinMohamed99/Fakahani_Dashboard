import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/validations/validation_manager.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.passwordController,
    required this.visibilityIcon,
    this.suffixIconOnTap,
    required this.isPassword,
  });
  final TextEditingController passwordController;
  final IconData visibilityIcon;
  final Function()? suffixIconOnTap;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isPassword: isPassword,
      controller: passwordController,
      onSaved: (value) => passwordController.text = value!,
      validator: (value) {
        return ValidationManager.passwordValidator(context, value!);
      },
      textInputType: TextInputType.visiblePassword,
      hintText: context.localization.password,
      textInputAction: TextInputAction.done,
      suffixIconOnTap: suffixIconOnTap,
      suffixIcon: Icon(
        visibilityIcon,
        color: ColorManager.lightGrey,
        size: kIconSizeDefault.sp,
      ),
    );
  }
}
