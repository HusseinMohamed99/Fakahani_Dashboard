import 'dart:io';

import 'package:fakahani_dashboard/core/helpers/extensions/snack_bar_extension.dart';
import 'package:fakahani_dashboard/core/helpers/extensions/widget_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/core/widgets/custom_button.dart';
import 'package:fakahani_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fakahani_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/logic/cubit/add_product_cubit.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:fakahani_dashboard/features/add_product/presentation/views/widgets/is_featured_item_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productCodeController = TextEditingController();

  late String name, code, description;
  late num price;
  bool isFeatured = false;
  File? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
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
                      onSaved: (value) {
                        name = value!;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Product Price',
                      controller: productPriceController,
                      textInputType: TextInputType.number,
                      onSaved: (value) {
                        price = num.parse(value!);
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Product code',
                      controller: productCodeController,
                      textInputType: TextInputType.number,
                      onSaved: (value) {
                        code = value!.toLowerCase();
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Product Description',
                      controller: productDescriptionController,
                      maxLines: 5,
                      onSaved: (value) {
                        description = value!;
                      },
                    ),
                    IsFeaturedItemCheckBox(
                      onTermsAccepted: (value) {
                        isFeatured = value;
                      },
                    ),
                    ImageField(
                      onImageSelected: (image) {
                        this.image = image!;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: kPaddingDefaultVertical.h,
          left: 0,
          right: 0,
          child: CustomButton(
            text: 'Add Product',
            onPressed: () {
              if (image != null) {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  AddProductInputEntity input = AddProductInputEntity(
                    name: name,
                    code: code,
                    description: description,
                    price: price,
                    isFeaturedItem: isFeatured,
                    image: image!,
                  );
                  context.read<AddProductCubit>().addProduct(input);
                } else {
                  _autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              } else {
                showError(context);
              }
            },
          ),
        ),
      ],
    ).allPadding(
      vPadding: kPaddingDefaultVertical,
      hPadding: kPaddingDefaultHorizontal,
    );
  }

  void showError(BuildContext context) {
    context.showSnackBar(
      'Please select an image',
    );
  }
}
