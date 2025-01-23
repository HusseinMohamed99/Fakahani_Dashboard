import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:fakahani_dashboard/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageField extends StatelessWidget {
  const ImageField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: context.width,
        padding: EdgeInsets.symmetric(
          horizontal: kPaddingContentHorizontal.w,
          vertical: kPaddingContentVertical.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: SvgPicture.asset(
          Assets.images.uploadImage,
          width: 120.w,
          height: 120.h,
        ),
      ),
    );
  }
}
