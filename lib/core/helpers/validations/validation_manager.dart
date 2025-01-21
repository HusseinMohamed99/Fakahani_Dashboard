import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

class ValidationManager {
  static String? displayNameValidator(
      BuildContext context, String? displayName) {
    final localization = context.localization;

    if (displayName == null ||
        displayName.isEmpty ||
        displayName.trim().isEmpty) {
      return localization.full_name_empty;
    }
    if (displayName.length < 3) {
      return localization.full_name_minimum_length;
    }
    if (displayName.length > 20) {
      return localization.full_name_maximum_length;
    }
    return null;
  }

  static String? phoneValidator(BuildContext context, String? phone) {
    final localization = context.localization;

    if (phone == null || phone.isEmpty || phone.trim().isEmpty) {
      return localization.phone_empty;
    }
    RegExp regex = RegExp(r'^(010|011|012|015)[0-9]{8}$');
    if (!regex.hasMatch(phone)) {
      return localization.phone_valid;
    }
    return null; // Valid phone number
  }

  static String? emailValidator(BuildContext context, String? value) {
    final localization = context.localization;

    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return localization.email_empty;
    }
    if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value)) {
      return localization.email_valid;
    }
    return null;
  }

  static String? otpValidator(BuildContext context, String? value) {
    final localization = context.localization;
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return localization.otp_empty;
    }
    if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
      return localization.otp_valid;
    }
    return null;
  }

  static String? passwordValidator(BuildContext context, String? value) {
    final localization = context.localization;

    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return localization.password_empty; // "Password cannot be empty"
    }

    if (!hasMinLength(value)) {
      return localization
          .password_length; // "Password must be at least 8 characters long"
    }

    if (!hasLowerCase(value)) {
      // "Password must include at least one lowercase letter"
      return localization.password_missing_lowercase;
    }

    if (!hasUpperCase(value)) {
      // "Password must include at least one uppercase letter"
      return localization.password_missing_uppercase;
    }

    if (!hasNumber(value)) {
      // "Password must include at least one numeric digit"
      return localization.password_missing_number;
    }

    if (!hasSpecialCharacter(value)) {
      // "Password must include at least one special character"
      return localization.password_missing_special;
    }

    return null; // Password is valid
  }

  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&]{8,}$#')
        .hasMatch(password);
  }

  static String? repeatPasswordValidator(BuildContext context,
      {String? value, String? password}) {
    final localization = context.localization;
    if (value != password) {
      return localization.password_does_not_match;
    }
    return null;
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
