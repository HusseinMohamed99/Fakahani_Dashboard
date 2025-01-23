import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: _formKey,
            autovalidateMode: _autovalidateMode,
            child: Column(
              spacing: kSpacingDefault.h,
              children: [
                CustomTextFormField(
                  hintText: 'Product Name',
                  controller: productNameController,
                ),
                CustomTextFormField(
                  hintText: 'Product Price',
                  controller: productPriceController,
                  textInputType: TextInputType.number,
                ),
                CustomTextFormField(
                  hintText: 'Product code',
                  controller: productCodeController,
                  textInputType: TextInputType.number,
                ),
                CustomTextFormField(
                  hintText: 'Product Description',
                  controller: productDescriptionController,
                  maxLines: 5,
                ),
                const ImageField(),
              ],
            ),
          ),
        ),
      ],
    ).allPadding(
      vPadding: kPaddingDefaultVertical,
      hPadding: kPaddingDefaultHorizontal,
    );
  }
}
