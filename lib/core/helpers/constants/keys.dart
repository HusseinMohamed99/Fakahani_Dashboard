import 'package:flutter_dotenv/flutter_dotenv.dart';

class SharedPrefKeys {
  static const String isOnBoarding = 'onBoarding';
  static const String userToken = 'userToken';
  static const String userData = 'userData';
}

bool isLoggedInUser = false;
bool isOnBoardingView = false;

String kSupabaseApiKey =
    dotenv.env['kSupabaseApiKey'] ?? (throw Exception('API_KEY is missing'));

String kSupabaseUrl =
    dotenv.env['kSupabaseUrl'] ?? (throw Exception('Base_URL is missing'));

class Buckets {
  static const String fruitsImage = 'fruits_images';
}
