// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fakahani`
  String get app_title {
    return Intl.message('Fakahani', name: 'app_title', desc: '', args: []);
  }

  /// `Faka`
  String get faka {
    return Intl.message('Faka', name: 'faka', desc: '', args: []);
  }

  /// `Hani`
  String get hani {
    return Intl.message('Hani', name: 'hani', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
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
    return Intl.message('OTP', name: 'otp', desc: '', args: []);
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

  /// `The account already exists for that email.`
  String get email_already_inUse_error {
    return Intl.message(
      'The account already exists for that email.',
      name: 'email_already_inUse_error',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again later.`
  String get general_error {
    return Intl.message(
      'An error occurred, please try again later.',
      name: 'general_error',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the terms of conditions.`
  String get terms_of_conditions_error {
    return Intl.message(
      'You must agree to the terms of conditions.',
      name: 'terms_of_conditions_error',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get account_created_successfully {
    return Intl.message(
      'Account created successfully',
      name: 'account_created_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get network_request_failed_message {
    return Intl.message(
      'Please check your internet connection',
      name: 'network_request_failed_message',
      desc: '',
      args: [],
    );
  }

  /// `The email address is badly formatted.`
  String get invalid_email_message {
    return Intl.message(
      'The email address is badly formatted.',
      name: 'invalid_email_message',
      desc: '',
      args: [],
    );
  }

  /// `Email/password accounts are not enabled. Please enable it in Firebase.`
  String get operation_not_allowed_message {
    return Intl.message(
      'Email/password accounts are not enabled. Please enable it in Firebase.',
      name: 'operation_not_allowed_message',
      desc: '',
      args: [],
    );
  }

  /// `This user account has been disabled by an administrator.`
  String get user_disabled_message {
    return Intl.message(
      'This user account has been disabled by an administrator.',
      name: 'user_disabled_message',
      desc: '',
      args: [],
    );
  }

  /// `An internal error occurred. Please try again later.`
  String get internal_error_message {
    return Intl.message(
      'An internal error occurred. Please try again later.',
      name: 'internal_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Please try again later.`
  String get too_many_requests_message {
    return Intl.message(
      'Too many requests. Please try again later.',
      name: 'too_many_requests_message',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password. Please try again.`
  String get wrong_password_message {
    return Intl.message(
      'Incorrect password. Please try again.',
      name: 'wrong_password_message',
      desc: '',
      args: [],
    );
  }

  /// `No user found with this email.`
  String get user_not_found_message {
    return Intl.message(
      'No user found with this email.',
      name: 'user_not_found_message',
      desc: '',
      args: [],
    );
  }

  /// `Email or password is incorrect`
  String get email_or_password_incorrect {
    return Intl.message(
      'Email or password is incorrect',
      name: 'email_or_password_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `Sign in successfully`
  String get sign_in_successfully {
    return Intl.message(
      'Sign in successfully',
      name: 'sign_in_successfully',
      desc: '',
      args: [],
    );
  }

  /// `An account already exists with a different credential.`
  String get account_exists_message {
    return Intl.message(
      'An account already exists with a different credential.',
      name: 'account_exists_message',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `To`
  String get to {
    return Intl.message('To', name: 'to', desc: '', args: []);
  }

  /// `We’re excited to see what you’re adding! Fill in the details below, and don’t forget to upload some great images`
  String get welcome_subtitle_first {
    return Intl.message(
      'We’re excited to see what you’re adding! Fill in the details below, and don’t forget to upload some great images',
      name: 'welcome_subtitle_first',
      desc: '',
      args: [],
    );
  }

  /// `Your product will be live and ready for customers in just a few steps.`
  String get welcome_subtitle_second {
    return Intl.message(
      'Your product will be live and ready for customers in just a few steps.',
      name: 'welcome_subtitle_second',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get start_now {
    return Intl.message('Start Now', name: 'start_now', desc: '', args: []);
  }

  /// `Add Product`
  String get add_product {
    return Intl.message('Add Product', name: 'add_product', desc: '', args: []);
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get product_description {
    return Intl.message(
      'Product Description',
      name: 'product_description',
      desc: '',
      args: [],
    );
  }

  /// `Product Price`
  String get product_price {
    return Intl.message(
      'Product Price',
      name: 'product_price',
      desc: '',
      args: [],
    );
  }

  /// `Product Code`
  String get product_code {
    return Intl.message(
      'Product Code',
      name: 'product_code',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Month`
  String get expiry_month {
    return Intl.message(
      'Expiry Month',
      name: 'expiry_month',
      desc: '',
      args: [],
    );
  }

  /// `Number of Calories`
  String get number_of_calories {
    return Intl.message(
      'Number of Calories',
      name: 'number_of_calories',
      desc: '',
      args: [],
    );
  }

  /// `Unit Amount`
  String get unit_amount {
    return Intl.message('Unit Amount', name: 'unit_amount', desc: '', args: []);
  }

  /// `Is Featured Item ?`
  String get is_featured_item {
    return Intl.message(
      'Is Featured Item ?',
      name: 'is_featured_item',
      desc: '',
      args: [],
    );
  }

  /// `Is Organic ?`
  String get is_organic {
    return Intl.message('Is Organic ?', name: 'is_organic', desc: '', args: []);
  }

  /// `Product added successfully`
  String get product_added_successfully {
    return Intl.message(
      'Product added successfully',
      name: 'product_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please select an image`
  String get select_image_error {
    return Intl.message(
      'Please select an image',
      name: 'select_image_error',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Step 1`
  String get step_first {
    return Intl.message('Step 1', name: 'step_first', desc: '', args: []);
  }

  /// `Step 2`
  String get step_second {
    return Intl.message('Step 2', name: 'step_second', desc: '', args: []);
  }

  /// `Step 3`
  String get step_third {
    return Intl.message('Step 3', name: 'step_third', desc: '', args: []);
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `This field is required`
  String get required_field {
    return Intl.message(
      'This field is required',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Help`
  String get help {
    return Intl.message('Help', name: 'help', desc: '', args: []);
  }

  /// `About Us`
  String get about_us {
    return Intl.message('About Us', name: 'about_us', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Personal Profile`
  String get personal_profile {
    return Intl.message(
      'Personal Profile',
      name: 'personal_profile',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message('My Orders', name: 'my_orders', desc: '', args: []);
  }

  /// `Payments`
  String get payments {
    return Intl.message('Payments', name: 'payments', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `Theme Mode`
  String get theme_mode {
    return Intl.message('Theme Mode', name: 'theme_mode', desc: '', args: []);
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
