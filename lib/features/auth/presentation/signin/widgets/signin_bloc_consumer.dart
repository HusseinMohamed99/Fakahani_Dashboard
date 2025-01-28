import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/navigation_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/snack_bar_extension.dart';
import 'package:fakahani_dashboard/core/routing/routes.dart';
import 'package:fakahani_dashboard/core/widgets/custom_loading_indicator.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_cubit.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_state.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBlocConsumer extends StatelessWidget {
  const SigninBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          context.showSnackBar(context.localization.sign_in_successfully);
          context.pushReplacementNamed(Routes.dashboardView);
        }
        if (state is SigninError) {
          context.showSnackBar(state.error);
        }
      },
      builder: (context, state) {
        return LoadingIndicator(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
