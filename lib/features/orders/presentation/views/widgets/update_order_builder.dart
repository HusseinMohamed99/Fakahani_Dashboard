import 'package:fakahani_dashboard/core/helpers/extensions/snack_bar_extension.dart';
import 'package:fakahani_dashboard/core/widgets/custom_loading_indicator.dart';
import 'package:fakahani_dashboard/features/orders/presentation/logic/update_order/update_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateOrderBuilder extends StatelessWidget {
  const UpdateOrderBuilder({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateOrderCubit, UpdateOrderState>(
      listener: (context, state) {
        if (state is UpdateOrderSuccess) {
           context.showSnackBar('Order updated successfully');
        }
        if (state is UpdateOrderFailure) {
          context.showSnackBar(state.errMessage);
        }
      },
      builder: (context, state) {
        return LoadingIndicator(
          isLoading: state is UpdateOrderLoading,
          child: child,
        );
      },
    );
  }
}
