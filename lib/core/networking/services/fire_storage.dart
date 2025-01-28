import 'dart:io';

import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as b;

class FireStorage implements StorageService {
  final firebaseStorage = FirebaseStorage.instance.ref();
  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    var fileReference = firebaseStorage.child('$path/$fileName');
    await fileReference.putFile(file);
    var fileURL = fileReference.getDownloadURL();
    return fileURL;
  }
}
