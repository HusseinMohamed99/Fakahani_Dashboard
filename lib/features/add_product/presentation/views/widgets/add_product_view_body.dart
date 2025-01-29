import 'dart:io';

import 'package:fakahani_dashboard/core/helpers/extensions/localization_extension.dart';
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
  final GlobalKey<FormState> _formKeyFirst = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeySecond = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyThird = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productCodeController = TextEditingController();
  final TextEditingController expiryMonthController = TextEditingController();
  final TextEditingController numberOfCaloriesController =
      TextEditingController();
  final TextEditingController uintAmountController = TextEditingController();

  late String name, code, description;
  late num price, expiryMonth, numberOfCalories, uintAmount;
  bool isFeatured = false;
  bool isOrganic = false;
  File? image;

  _steps() => [
        Step(
          isActive: _currentStep == 0,
          state: _stepState(0),
          title: const Text('First'),
          content: Form(
            key: _formKeyFirst,
            autovalidateMode: _autovalidateMode,
            child: Column(
              spacing: kSpacingDefault.h,
              children: [
                CustomTextFormField(
                  hintText: context.localization.product_name,
                  controller: productNameController,
                  onSaved: (value) {
                    name = value!;
                  },
                ),
                CustomTextFormField(
                  hintText: context.localization.product_price,
                  controller: productPriceController,
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    price = num.parse(value!);
                  },
                ),
                CustomTextFormField(
                  hintText: context.localization.product_code,
                  controller: productCodeController,
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    code = value!.toLowerCase();
                  },
                ),
              ],
            ),
          ),
        ),
        Step(
          isActive: _currentStep == 1,
          state: _stepState(1),
          title: const Text('Second'),
          content: Form(
            key: _formKeySecond,
            autovalidateMode: _autovalidateMode,
            child: Column(
              spacing: kSpacingDefault.h,
              children: [
                CustomTextFormField(
                  hintText: context.localization.expiry_month,
                  controller: expiryMonthController,
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    expiryMonth = num.parse(value!);
                  },
                ),
                CustomTextFormField(
                  hintText: context.localization.number_of_calories,
                  controller: numberOfCaloriesController,
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    numberOfCalories = num.parse(value!);
                  },
                ),
                CustomTextFormField(
                  hintText: context.localization.unit_amount,
                  controller: uintAmountController,
                  textInputType: TextInputType.number,
                  onSaved: (value) {
                    uintAmount = num.parse(value!);
                  },
                ),
              ],
            ),
          ),
        ),
        Step(
          isActive: _currentStep == 2,
          state: _stepState(2),
          title: const Text('Third'),
          content: Form(
            key: _formKeyThird,
            autovalidateMode: _autovalidateMode,
            child: Column(
              spacing: kSpacingDefault.h,
              children: [
                CustomTextFormField(
                  hintText: context.localization.product_description,
                  controller: productDescriptionController,
                  maxLines: 5,
                  onSaved: (value) {
                    description = value!;
                  },
                ),
                ItemCheckBox(
                  onTermsAccepted: (value) {
                    isFeatured = value;
                  },
                  title: context.localization.is_featured_item,
                ),
                ItemCheckBox(
                  onTermsAccepted: (value) {
                    isOrganic = value;
                  },
                  title: context.localization.is_organic,
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
      ];
  int _currentStep = 0;
  void _onStepContinue() {
    if (_currentStep < _steps().length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _onStepCancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  void _onStepTapped(int index) {
    setState(() {
      _currentStep = index;
    });
  }

  Widget controlsBuilder(
      BuildContext context, ControlsDetails controlsDetails) {
    return CustomButton(
        text: 'Continue',
        onPressed: () {
          if (_currentStep == 0) {
            if (_formKeyFirst.currentState!.validate()) {
              _formKeyFirst.currentState!.save();
              _onStepContinue();
            }
          } else if (_currentStep == 1) {
            if (_formKeySecond.currentState!.validate()) {
              _formKeySecond.currentState!.save();
              _onStepContinue();
            }
          } else if (_currentStep == 2) {
            if (image != null) {
              if (_formKeyThird.currentState!.validate()) {
                _formKeyThird.currentState!.save();
                _onStepContinue();
              }
            } else {
              showError(context);
            }
          } else if (_formKeyFirst.currentState!.validate() &&
              _formKeySecond.currentState!.validate() &&
              _formKeyThird.currentState!.validate() &&
              image != null) {
            AddProductInputEntity input = AddProductInputEntity(
              name: name,
              code: code,
              description: description,
              price: price,
              isFeaturedItem: isFeatured,
              image: image!,
              expiryMonth: expiryMonth.toInt(),
              numberOfCalories: numberOfCalories.toInt(),
              uintAmount: uintAmount.toInt(),
              isOrganic: isOrganic,
              reviews: [],
            );
            context.read<AddProductCubit>().addProduct(input);
          } else {
            _autovalidateMode == AutovalidateMode.always;
            setState(() {});
          }
        }).vPadding(kPaddingLargeVertical);
  }

  StepState _stepState(int step) {
    if (_currentStep == step) {
      return StepState.editing;
    } else if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.disabled;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      controlsBuilder: controlsBuilder,
      currentStep: _currentStep,
      steps: _steps(),
      onStepContinue: _onStepContinue,
      onStepCancel: _onStepCancel,
      onStepTapped: _onStepTapped,
    );
  }

  void showError(BuildContext context) {
    context.showSnackBar(
      context.localization.select_image_error,
    );
  }
}
