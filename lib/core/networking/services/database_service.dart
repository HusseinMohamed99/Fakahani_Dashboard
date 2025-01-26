abstract class DatabaseServices {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentID,
  });

  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentID,
  });

  Future<bool> checkIfDocumentExists({
    required String path,
    required String documentID,
  });
}
