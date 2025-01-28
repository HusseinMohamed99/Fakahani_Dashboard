import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/networking/errors/auth_error_messages.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:fakahani_dashboard/core/theming/style_manager/text_style.dart';
import 'package:fakahani_dashboard/core/widgets/custom_button.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_cubit.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/widgets/email_form_field_widget.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/widgets/password_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninFormField extends StatefulWidget {
  const SigninFormField({super.key});

  @override
  State<SigninFormField> createState() => _SigninFormFieldState();
}

class _SigninFormFieldState extends State<SigninFormField> {
  bool isPassword = true;
  IconData? suffix = Icons.visibility_off;

  void changePassword() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
  }

  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<SigninCubit>().emailController;
    passwordController = context.read<SigninCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    final signinCubit = context.read<SigninCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: kPaddingDefaultVertical,
      children: [
        EmailFormField(
          emailController: signinCubit.emailController,
        ),
        PasswordFormField(
          isPassword: isPassword,
          suffixIconOnTap: () {
            setState(changePassword);
          },
          visibilityIcon: suffix!,
          passwordController: signinCubit.passwordController,
        ),
        Text(
          context.localization.forgot_password,
          textAlign: TextAlign.end,
          style: TextStyleManager.semiBold13(
            context: context,
            color: ColorManager.mediumGreen,
          ),
        ),
        CustomButton(
          text: context.localization.login,
          onPressed: () {
            if (signinCubit.formKey.currentState!.validate()) {
              signinCubit.formKey.currentState!.save();
              signinCubit.signInWithEmailAndPassword(
                AuthErrorMessages(
                  internetConnectionMessage:
                      context.localization.network_request_failed_message,
                  generalErrorMessage: context.localization.general_error,
                  invalidCredentialMessage:
                      context.localization.email_or_password_incorrect,
                  userNotFoundMessage:
                      context.localization.user_not_found_message,
                  userDisabledMessage:
                      context.localization.user_disabled_message,
                  operationNotAllowedMessage:
                      context.localization.operation_not_allowed_message,
                  invalidEmailMessage:
                      context.localization.invalid_email_message,
                  internalErrorMessage:
                      context.localization.internal_error_message,
                  tooManyRequestsMessage:
                      context.localization.too_many_requests_message,
                ),
              );
            } else {
              signinCubit.autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        ),
      ],
    ).vPadding(kPaddingDefaultVertical);
  }
}
