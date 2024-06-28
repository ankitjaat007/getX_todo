import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/controller/user_controller.dart';
import 'package:getx_todo/utils/routes/routes_name.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final user = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Splash Screen"),
            TextButton(
                onPressed: () async {
                  final nid = await Get.toNamed(RoutesName.home,
                      arguments: {"name": "Ram"});
                  print(nid["id"]);
                },
                child: Text("Home Screen")),
            TextButton(
                onPressed: () {
                  user.updatex();
                },
                child: Text("Up Date")),
            Obx(
              () => Text(user.userdata.value.name!),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(RoutesName.clipercontaner);
                },
                child: Text("cliper contaner"))
          ],
        ),
      ),
    );
  }
}
