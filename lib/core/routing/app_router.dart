import 'package:fakahani_dashboard/core/di/dependency_injection.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_cubit.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:fakahani_dashboard/features/auth/domain/repo/auth_repo.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_cubit.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/signin_view.dart';
import 'package:fakahani_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:fakahani_dashboard/features/orders/presentation/views/orders_view.dart';
import 'package:fakahani_dashboard/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SigninCubit(
              getIt<AuthRepo>(),
            ),
            child: const SigninView(),
          ),
        );
      case Routes.dashboardView:
        return MaterialPageRoute(
          builder: (_) => const DashboardView(),
        );
      case Routes.addProductView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AddProductCubit(
              getIt<ImagesRepo>(),
              getIt<ProductRepo>(),
            ),
            child: const AddProductView(),
          ),
        );
      case Routes.settingsView:
        return MaterialPageRoute(
          builder: (_) => const SettingsView(),
        );
      case Routes.ordersView:
        return MaterialPageRoute(builder: (context) => const OrdersView());
    }

    return null;
  }
}
