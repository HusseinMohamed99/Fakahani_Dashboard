import 'package:fakahani_dashboard/core/networking/services/database_service.dart';
import 'package:fakahani_dashboard/core/networking/services/fire_storage.dart';
import 'package:fakahani_dashboard/core/networking/services/firestore_services.dart';
import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fakahani_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fakahani_dashboard/core/repos/product_repo/product_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<StorageService>(FireStorage());
  getIt.registerSingleton<DatabaseServices>(FirestoreServices());
  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StorageService>()));
  getIt.registerSingleton<ProductRepo>(
      ProductRepoImpl(databaseServices: getIt.get<DatabaseServices>()));
}
