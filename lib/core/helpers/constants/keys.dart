class SharedPrefKeys {
  static const String isOnBoarding = 'onBoarding';
  static const String userToken = 'userToken';
  static const String userData = 'userData';
}

bool isLoggedInUser = false;
bool isOnBoardingView = false;

const String kSupabaseApiKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind6Z3dxcW1pcm9ydW5laHB4bXBzIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczODA1ODUzOSwiZXhwIjoyMDUzNjM0NTM5fQ.9y74y1co9oEnaSbZJgSDC5TcL86Vkgu5NJ2dcY85kIg';

const String kSupabaseUrl = 'https://wzgwqqmirorunehpxmps.supabase.co';

class Buckets {
  static const String fruitsImage = 'fruits_images';
}
