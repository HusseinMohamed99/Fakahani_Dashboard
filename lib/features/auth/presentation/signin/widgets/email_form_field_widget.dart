import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/validations/validation_manager.dart';
import 'package:fakahani_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.emailController,
  });
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      onSaved: (value) => emailController.text = value!,
      validator: (value) {
        return ValidationManager.emailValidator(context, value!);
      },
      textInputType: TextInputType.emailAddress,
      hintText: context.localization.email,
    );
  }
}
