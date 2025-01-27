import 'package:fakahani_dashboard/core/di/dependency_injection.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_cubit.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:fakahani_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
// This arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
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
    }

    return null;
  }
}
