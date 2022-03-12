import 'package:cloud_firestore/cloud_firestore.dart';

class HomeServices {
  final CollectionReference _categoriescollectionReference =
      FirebaseFirestore.instance.collection('categories');

  final CollectionReference _bsetsellingcollectionReference =
      FirebaseFirestore.instance.collection('items');

  Future<List<QueryDocumentSnapshot>> getCategory() async {
    var value = await _categoriescollectionReference.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getBsetselling() async {
    var value = await _bsetsellingcollectionReference.get();
    return value.docs;
  }
}
