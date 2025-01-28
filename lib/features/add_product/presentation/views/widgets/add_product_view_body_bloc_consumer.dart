import 'package:fakahani_dashboard/core/helpers/extensions/snack_bar_extension.dart';
import 'package:fakahani_dashboard/core/widgets/custom_loading_indicator.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_cubit.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_state.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBodyBlocConsumer extends StatelessWidget {
  const AddProductViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          context.showSnackBar('Product added successfully');
        } else if (state is AddProductFailure) {
          context.showSnackBar(state.message);
        }
      },
      builder: (context, state) {
        return LoadingIndicator(
          isLoading: state is AddProductLoading,
          child: const AddProductViewBody(),
        );
      },
    );
  }
}
