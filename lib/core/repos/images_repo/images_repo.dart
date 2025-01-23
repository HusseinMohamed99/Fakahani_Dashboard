import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fakahani_dashboard/core/networking/errors/failures.dart';

abstract class ImagesRepo {
  Future<Either<Failure, String>> uploadImage(File imageFile);
}
