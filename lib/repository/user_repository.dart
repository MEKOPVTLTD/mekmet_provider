import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mekmet_provider/modal/address_model.dart';
import 'package:mekmet_provider/modal/user_model.dart';

class UserRepository extends GetxService {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  Future<void> addAddress(String uuid, AddressModel addressModel) async {
    var users = _db.collection("Users");
    users.doc(uuid).update({
      "addressBook": FieldValue.arrayUnion([addressModel.toJson()])
    });
  }

  Future<void> removeAddress(String uuid, AddressModel addressModel) async {
    var users = _db.collection("Users");
    users.doc(uuid).update({
      "addressBook": FieldValue.arrayRemove([addressModel.toJson()])
    });
  }

  Future<UserModel?> geUser(String uid) async {
    var users = _db.collection("Users");
    final snapshot = await users.doc(uid).get();
    if (snapshot.exists) {
      Map<String, dynamic>? data = snapshot.data();
      return UserModel.fromJson(data!);
    }
    return null;
  }
}
