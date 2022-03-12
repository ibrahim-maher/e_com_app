import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_com_app/model/usermodel.dart';

class FireStoreUser {
  final CollectionReference usercCollectionRef =
      FirebaseFirestore.instance.collection('Users');

  Future<void> addUserToFirestore(UserModel userModel) async {
    return await usercCollectionRef
        .doc(userModel.userId)
        .set(userModel.toJson());
  }
}
