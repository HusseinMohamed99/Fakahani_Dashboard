import 'package:fakahani_dashboard/core/helpers/extensions/color_extension.dart';
import 'package:fakahani_dashboard/core/theming/color_manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: HexColorExtension('#80000000').toColor(),
            child: const Center(
              child: SpinKitWaveSpinner(
                color: ColorManager.mediumGreen,
                waveColor: ColorManager.brightGreen,
                trackColor: ColorManager.lighterGreen,
                duration: Duration(milliseconds: 3000),
                size: 50.0,
              ),
            ),
          ),
      ],
    );
  }
}
