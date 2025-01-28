import 'package:bloc/bloc.dart';
import 'package:fakahani_dashboard/bloc_observer.dart';
import 'package:fakahani_dashboard/core/di/dependency_injection.dart';
import 'package:fakahani_dashboard/core/helpers/constants/keys.dart';
import 'package:fakahani_dashboard/core/networking/services/supabase_storage.dart';
import 'package:fakahani_dashboard/core/routing/app_router.dart';
import 'package:fakahani_dashboard/fakahani_dashboard.dart';
import 'package:fakahani_dashboard/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(
    FakahaniDashboard(appRouter: AppRouters()),
  );
}

Future<void> initServices() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SupabaseStorageService.initSupabase();
  await SupabaseStorageService.createBuckets(Buckets.fruitsImage);

  await setupGetIt();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
}
