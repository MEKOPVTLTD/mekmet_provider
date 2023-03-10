import 'package:get/get.dart';
import 'package:mekmet_provider/modal/address_model.dart';
import 'package:mekmet_provider/modal/user_model.dart';
import 'package:mekmet_provider/repository/user_repository.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final _addressRepo = Get.put(UserRepository());

  Future<void> updateAddress(String uuid, AddressModel addressModel) async {
    return await _addressRepo.addAddress(uuid, addressModel);
  }

  Future<void> removeAddress(String uuid, AddressModel addressModel) async {
    return await _addressRepo.removeAddress(uuid, addressModel);
  }

  Future<UserModel?> getUser(String uuid) async {
    return await _addressRepo.geUser(uuid);
  }
}