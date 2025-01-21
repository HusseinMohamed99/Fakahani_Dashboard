// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:fakahani_dashboard/generated/intl/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email can't be empty`
  String get email_empty {
    return Intl.message(
      'Email can\'t be empty',
      name: 'email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get email_valid {
    return Intl.message(
      'Please enter a valid email address',
      name: 'email_valid',
      desc: '',
      args: [],
    );
  }

  /// `Email already exists`
  String get email_already_exists {
    return Intl.message(
      'Email already exists',
      name: 'email_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `Password can't be empty`
  String get password_empty {
    return Intl.message(
      'Password can\'t be empty',
      name: 'password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get password_length {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'password_length',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match`
  String get password_does_not_match {
    return Intl.message(
      'Passwords don\'t match',
      name: 'password_does_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter`
  String get password_missing_uppercase {
    return Intl.message(
      'Password must contain at least one uppercase letter',
      name: 'password_missing_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one lowercase letter`
  String get password_missing_lowercase {
    return Intl.message(
      'Password must contain at least one lowercase letter',
      name: 'password_missing_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one number`
  String get password_missing_number {
    return Intl.message(
      'Password must contain at least one number',
      name: 'password_missing_number',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character`
  String get password_missing_special {
    return Intl.message(
      'Password must contain at least one special character',
      name: 'password_missing_special',
      desc: '',
      args: [],
    );
  }

  /// `Full name can't be empty`
  String get full_name_empty {
    return Intl.message(
      'Full name can\'t be empty',
      name: 'full_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `Full name must be at least 3 characters`
  String get full_name_minimum_length {
    return Intl.message(
      'Full name must be at least 3 characters',
      name: 'full_name_minimum_length',
      desc: '',
      args: [],
    );
  }

  /// `Full name must be at most 20 characters`
  String get full_name_maximum_length {
    return Intl.message(
      'Full name must be at most 20 characters',
      name: 'full_name_maximum_length',
      desc: '',
      args: [],
    );
  }

  /// `Phone number can't be empty`
  String get phone_empty {
    return Intl.message(
      'Phone number can\'t be empty',
      name: 'phone_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get phone_valid {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'phone_valid',
      desc: '',
      args: [],
    );
  }

  /// `Phone number already exists`
  String get phone_already_exists {
    return Intl.message(
      'Phone number already exists',
      name: 'phone_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `OTP can't be empty`
  String get otp_empty {
    return Intl.message(
      'OTP can\'t be empty',
      name: 'otp_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid OTP`
  String get otp_valid {
    return Intl.message(
      'Please enter a valid OTP',
      name: 'otp_valid',
      desc: '',
      args: [],
    );
  }

  /// `OTP must be 4 digits`
  String get otp_length {
    return Intl.message(
      'OTP must be 4 digits',
      name: 'otp_length',
      desc: '',
      args: [],
    );
  }

  /// `OTP`
  String get otp {
    return Intl.message(
      'OTP',
      name: 'otp',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weak_password_error {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weak_password_error',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
