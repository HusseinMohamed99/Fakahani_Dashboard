import 'package:fakahani_dashboard/features/dashboard/presentation/views/widgets/dashboard_view_boy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: DashboardViewBoy(),
      ),
    );
  }
}
