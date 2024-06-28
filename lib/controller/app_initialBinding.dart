import 'package:get/get.dart';
import 'package:getx_todo/controller/user_controller.dart';

class AppInitialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
  }
}
