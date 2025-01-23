import 'package:fakahani_dashboard/core/routing/app_router.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/core/theming/app_theming/light_theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FakahaniDashboard extends StatelessWidget {
  const FakahaniDashboard({super.key, required this.appRouter});
  final AppRouters appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Fakahani Dashboard',
            theme: buildLightTheming(),
            themeMode: ThemeMode.light,
            darkTheme: buildLightTheming(),
            onGenerateRoute: appRouter.generateRoute,
            initialRoute: Routes.dashboardView,
          ),
        );
      },
    );
  }
}
