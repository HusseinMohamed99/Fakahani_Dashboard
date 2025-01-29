import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
import 'package:fakahani_dashboard/core/widgets/build_app_bar.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/add_product_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.localization.add_product),
      body: const AddProductViewBodyBlocConsumer(),
    );
  }
}
