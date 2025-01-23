import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';

class ImagesRepoImpl implements ImagesRepo {
  @override
  Future<Either<Failure, String>> uploadImage(File imageFile) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
