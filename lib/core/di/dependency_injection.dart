import 'package:fakahani_dashboard/core/networking/services/fire_storage.dart';
import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<StorageService>(FireStorage());
}
