import 'package:get/get.dart';
import 'package:starter_template/models/user_model.dart';
import 'package:starter_template/services/user_services.dart';

final userCntr = Get.find<UserController>();

class UserController extends GetxController {
  Rx<UserModel>? user = UserModel().obs;
  RxList<UserModel>? allUsers = <UserModel>[].obs;
  @override
  void onReady() {
    initAdminStream();
  }

  initAdminStream() async {
    // user!.bindStream(UserServices().streamUser()!);
    // allUsers!.bindStream(UserServices().streamAllUsers()!);
  }
}
