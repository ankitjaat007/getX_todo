import 'package:get/get.dart';
import 'package:getx_todo/model/models.dart';

class UserController extends GetxController {
  final _userdata = UserModel(name: "Ram").obs;
  Rx<UserModel> get userdata => _userdata;
  updatex() {
    _userdata.update(
      (val) {
        val!.name = "Shaym";
      },
    );
  }

  set(UserModel model) {
    _userdata.value = model;
    update();
  }
}
