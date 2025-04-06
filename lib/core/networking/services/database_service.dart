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
  Stream<dynamic> streamData({
    required String path,
    Map<String, dynamic>? query,
  });
  Future<void> updateData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId});
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId});

}
