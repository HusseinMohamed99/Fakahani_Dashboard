import 'package:fakahani_dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';

extension LocalizationExtension on BuildContext {
  S get localization => S.of(this);
}
