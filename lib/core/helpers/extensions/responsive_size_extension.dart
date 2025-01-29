import 'package:flutter/material.dart';

extension ResponsiveSizeBuildContext<T> on BuildContext {
  // MediaQuery Size Of
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
