import 'package:fakahani_dashboard/core/routing/app_router.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:flutter/material.dart';

class FakahaniDashboard extends StatelessWidget {
  const FakahaniDashboard({super.key, required this.appRouter});
  final AppRouters appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fakahani Dashboard',
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.dashboardView,
    );
  }
}
