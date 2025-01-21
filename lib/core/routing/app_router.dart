import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
// This arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.dashboardView:
        return MaterialPageRoute(
          builder: (_) => const DashboardView(),
        );
    }

    return null;
  }
}
