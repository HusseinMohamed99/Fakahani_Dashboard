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

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId}) async {
    var data = await firestore.collection(path).doc(docuementId).get();
    return data.exists;
  }

  @override
  Stream streamData(
      {required String path, Map<String, dynamic>? query}) async* {
    Query<Map<String, dynamic>> data = firestore.collection(path);
    if (query != null) {
      if (query['orderBy'] != null) {
        var orderByField = query['orderBy'];
        var descending = query['descending'];
        data = data.orderBy(orderByField, descending: descending);
      }
      if (query['limit'] != null) {
        var limit = query['limit'];
        data = data.limit(limit);
      }
    }
    await for (var result in data.snapshots()) {
      yield result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<void> updateData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    await firestore.collection(path).doc(documentId).update(data);
  }
}
