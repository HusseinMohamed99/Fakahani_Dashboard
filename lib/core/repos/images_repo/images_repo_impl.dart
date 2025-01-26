import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';
import 'package:fakahani_dashboard/core/networking/services/end_point.dart';
import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';

class ImagesRepoImpl implements ImagesRepo {
  ImagesRepoImpl(this.storageService);

  final StorageService storageService;
  @override
  Future<Either<Failure, String>> uploadImage(File imageFile) async {
    try {
      String url =
          await storageService.uploadFile(imageFile, BackendEndPoint.images);
      return Right(url);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
