import 'dart:convert';

import 'package:fakahani_dashboard/core/helpers/constants/keys.dart';
import 'package:fakahani_dashboard/core/networking/cache/caching_helper.dart';
import 'package:fakahani_dashboard/features/auth/data/models/user_model.dart';
import 'package:fakahani_dashboard/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = CachingHelper.getData(SharedPrefKeys.userData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
