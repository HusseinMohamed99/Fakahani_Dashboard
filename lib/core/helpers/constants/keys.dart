import 'package:flutter_dotenv/flutter_dotenv.dart';

class SharedPrefKeys {
  static const String isOnBoarding = 'onBoarding';
  static const String userToken = 'userToken';
  static const String userData = 'userData';
}

bool isLoggedInUser = false;
bool isOnBoardingView = false;

final String? kSupabaseApiKey = dotenv.env['kSupabaseApiKey'];

final String? kSupabaseUrl = dotenv.env['kSupabaseUrl'];

class Buckets {
  static const String fruitsImage = 'fruits_images';
}
