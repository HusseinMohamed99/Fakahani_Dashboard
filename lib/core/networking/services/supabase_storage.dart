import 'dart:io';

import 'package:fakahani_dashboard/core/helpers/constants/keys.dart';
import 'package:fakahani_dashboard/core/helpers/functions/app_logs.dart';
import 'package:fakahani_dashboard/core/networking/services/storage_service.dart';
import 'package:path/path.dart' as b;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStorageService implements StorageService {
  static late Supabase _supabase;
  static createBuckets(String bucketName) async {
    var buckets = await _supabase.client.storage.listBuckets();
    bool isBucketExist = false;
    for (var bucket in buckets) {
      if (bucket.id == bucketName) {
        isBucketExist = true;
        break;
      }
    }
    if (!isBucketExist) {
      await _supabase.client.storage
          .createBucket(bucketName, const BucketOptions(public: true));
    }
  }

  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: kSupabaseUrl,
      anonKey: kSupabaseApiKey,
    );
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    final String publicUrl = _supabase.client.storage
        .from(Buckets.fruitsImage)
        .getPublicUrl('$path/$fileName');
    AppLogs.successLog('File uploaded successfully$publicUrl');

    return publicUrl;
  }
}
