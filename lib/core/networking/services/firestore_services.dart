import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fakahani_dashboard/core/networking/services/database_service.dart';

class FirestoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentID,
  }) async {
    if (documentID != null) {
      await firestore.collection(path).doc(documentID).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentID}) async {
    var documentResponse =
        await firestore.collection(path).doc(documentID).get();
    return documentResponse.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDocumentExists(
      {required String path, required String documentID}) async {
    var documentResponse =
        await firestore.collection(path).doc(documentID).get();
    return documentResponse.exists;
  }
}
