// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "email_already_exists":
            MessageLookupByLibrary.simpleMessage("Email already exists"),
        "email_empty":
            MessageLookupByLibrary.simpleMessage("Email can\'t be empty"),
        "email_valid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address"),
        "full_name_empty":
            MessageLookupByLibrary.simpleMessage("Full name can\'t be empty"),
        "full_name_maximum_length": MessageLookupByLibrary.simpleMessage(
            "Full name must be at most 20 characters"),
        "full_name_minimum_length": MessageLookupByLibrary.simpleMessage(
            "Full name must be at least 3 characters"),
        "otp": MessageLookupByLibrary.simpleMessage("OTP"),
        "otp_empty":
            MessageLookupByLibrary.simpleMessage("OTP can\'t be empty"),
        "otp_length":
            MessageLookupByLibrary.simpleMessage("OTP must be 4 digits"),
        "otp_valid":
            MessageLookupByLibrary.simpleMessage("Please enter a valid OTP"),
        "password_does_not_match":
            MessageLookupByLibrary.simpleMessage("Passwords don\'t match"),
        "password_empty":
            MessageLookupByLibrary.simpleMessage("Password can\'t be empty"),
        "password_length": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters"),
        "password_missing_lowercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one lowercase letter"),
        "password_missing_number": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one number"),
        "password_missing_special": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one special character"),
        "password_missing_uppercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter"),
        "phone_already_exists":
            MessageLookupByLibrary.simpleMessage("Phone number already exists"),
        "phone_empty": MessageLookupByLibrary.simpleMessage(
            "Phone number can\'t be empty"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Phone Number"),
        "phone_valid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number"),
        "weak_password_error": MessageLookupByLibrary.simpleMessage(
            "The password provided is too weak.")
      };
}
