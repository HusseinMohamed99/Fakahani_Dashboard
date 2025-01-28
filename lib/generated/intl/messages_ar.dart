// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "email_already_exists": MessageLookupByLibrary.simpleMessage(
            "البريد الإلكتروني موجود بالفعل"),
        "email_empty": MessageLookupByLibrary.simpleMessage(
            "لا يمكن ترك البريد الإلكترونى فارغًا"),
        "email_valid": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال عنوان بريد إلكتروني صالح"),
        "full_name_empty": MessageLookupByLibrary.simpleMessage(
            "لا يمكن ترك الاسم الكامل فارغًا"),
        "full_name_maximum_length": MessageLookupByLibrary.simpleMessage(
            "يجب أن يحتوي الاسم الكامل على 20 حرفًا كحد أقصى"),
        "full_name_minimum_length": MessageLookupByLibrary.simpleMessage(
            "يجب أن يحتوي الاسم الكامل على 3 أحرف على الأقل"),
        "otp": MessageLookupByLibrary.simpleMessage("رمز التحقق"),
        "otp_empty": MessageLookupByLibrary.simpleMessage(
            "لا يمكن ترك رمز التحقق فارغًا"),
        "otp_length": MessageLookupByLibrary.simpleMessage(
            "الرمز التحقق يجب على الأقل 4 رقم"),
        "otp_valid": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال رمز التحقق صالح"),
        "password_does_not_match":
            MessageLookupByLibrary.simpleMessage("كلمات المرور لا تتطابق"),
        "password_empty": MessageLookupByLibrary.simpleMessage(
            "لا يمكن ترك كلمة المرور فارغة"),
        "password_length": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تكون على الأقل 8 حروف"),
        "password_missing_lowercase": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تحتوي على حروف صغيرة"),
        "password_missing_number": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تحتوي على رقم"),
        "password_missing_special": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تحتوي على رمز خاص"),
        "password_missing_uppercase": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تحتوي على حروف كبيرة"),
        "phone_already_exists":
            MessageLookupByLibrary.simpleMessage("رقم الهاتف موجود بالفعل"),
        "phone_empty": MessageLookupByLibrary.simpleMessage(
            "لا يمكن ترك رقم الهاتف فارغًا"),
        "phone_valid":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال رقم هاتف صالح")
      };
}
