import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireStorage implements StorageService {
  @override
  Future<String> uploadFile(String file) {
    final FirebaseStorage storageReference = FirebaseStorage.instance;
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}
