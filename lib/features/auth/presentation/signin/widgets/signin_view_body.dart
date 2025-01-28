import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/responsive/spacing.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/features/auth/presentation/logic/signin_cubit/signin_cubit.dart';
import 'package:fakahani_dashboard/features/auth/presentation/signin/widgets/signin_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninCubit>().formKey,
      autovalidateMode: context.read<SigninCubit>().autovalidateMode,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SigninFormField()),
          SliverToBoxAdapter(child: verticalSpacing(kPaddingLargeHorizontal)),
        ],
      ).hPadding(kPaddingDefaultHorizontal),
    );
  }
}
