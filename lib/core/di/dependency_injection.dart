import 'package:fakahani_dashboard/core/networking/cache/caching_helper.dart';
import 'package:fakahani_dashboard/core/networking/services/database_service.dart';
import 'package:fakahani_dashboard/core/networking/services/firebase_auth_services.dart';
import 'package:fakahani_dashboard/core/networking/services/firestore_services.dart';
import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:fakahani_dashboard/core/networking/services/supabase_storage.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo_impl.dart';
import 'package:fakahani_dashboard/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fakahani_dashboard/features/auth/domain/repo/auth_repo.dart';
import 'package:fakahani_dashboard/features/orders/data/repos/orders_repo_impl.dart';
import 'package:fakahani_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await CachingHelper.init();
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DatabaseServices>(FirestoreServices());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      databaseServices: getIt<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<StorageService>(SupabaseStorageService());
  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StorageService>()));
  getIt.registerSingleton<ProductRepo>(
      ProductRepoImpl(databaseServices: getIt.get<DatabaseServices>()));
        getIt.registerSingleton<OrdersRepo>(
      OrdersRepoImpl(getIt.get<DatabaseServices>()));

}
