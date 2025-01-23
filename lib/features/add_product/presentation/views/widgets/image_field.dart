// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:fakahani_dashboard/core/helpers/extensions/responsive_size_extension.dart';
import 'package:fakahani_dashboard/core/helpers/functions/app_logs.dart';
import 'package:fakahani_dashboard/core/helpers/value_manager/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({
    super.key,
    required this.onImageSelected,
  });
  final ValueChanged<File?> onImageSelected;

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            await pickImage();
          } on Exception catch (e) {
            AppLogs.errorLog('Error picking image: ${e.toString()}');
          }
          isLoading = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              width: context.width,
              padding: EdgeInsets.symmetric(
                horizontal: kPaddingContentHorizontal.w,
                vertical: kPaddingContentVertical.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0).r,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: fileImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16.0).r,
                      child: Image.file(
                        fileImage!,
                        width: 180.w,
                        height: 180.h,
                      ),
                    )
                  : Icon(
                      Icons.add_a_photo,
                      size: 180.sp,
                    ),
            ),
            Visibility(
              visible: fileImage != null,
              child: IconButton(
                onPressed: () {
                  fileImage = null;
                  widget.onImageSelected(fileImage);
                  setState(() {});
                },
                icon: const Icon(Icons.clear),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    fileImage = File(image!.path);
    widget.onImageSelected(fileImage!);
  }
}
