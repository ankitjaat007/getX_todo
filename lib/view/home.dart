import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:getx_todo/res/sheardpraf.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // **********
  RxInt _number = 0.obs;
  RxString _name = "name".obs;
  // **********

  final name = Get.arguments["name"];

  @override
  Widget build(BuildContext context) {
    print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text("getx todo app"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          children: [
            // getX se number add or remove
            // ^^^^^^^^^^^^^^
            Obx(
              () => Text(
                "$_number " + "order".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          _number(_number.value - 1); //good methed
                          // _number.value--;
                          // _number--;
                        },
                        icon: Icon(Icons.remove))),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          _number(_number.value + 1);
                        },
                        icon: Icon(Icons.add)))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),

            // getX se string ko chote or bde letter me krna
            // ^^^^^^^^^^^^^^
            Obx(
              () => Text(
                "$_name".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      _name(_name.value.toLowerCase()); // good method
                      // _name.value.toLowerCase();
                      // _name.toLowerCase();
                    },
                    child: Text('smalltext'.tr)),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      _name(_name.value.toUpperCase());
                    },
                    child: Text('bigtext'.tr)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),

            // getX snakebar show
            // ^^^^^^^^^^^^^^
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Get.snackbar("name", "msg".tr,
                      borderColor: Colors.amberAccent, borderWidth: 1);
                },
                child: Text('snakbar'.tr)),
            SizedBox(
              height: 15,
            ),
            Divider(),

            // getX dilog show
            // ^^^^^^^^^^^^^^
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Get.defaultDialog(
                      title: "name".tr,
                      middleText: "msg".tr,
                      cancel: Icon(Icons.cancel),
                      confirm: Icon(Icons.done_all));
                },
                child: Text('diolg'.tr)),
            SizedBox(
              height: 15,
            ),
            Divider(),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  Get.bottomSheet(
                      backgroundColor: Colors.orangeAccent,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            trailing: Icon(Icons.light_mode),
                            onTap: () async {
                              Get.changeThemeMode(ThemeMode.light);
                              await SpData.setboolTheme(SpData.themekey, true);
                            },
                            title: Text("light_mode".tr),
                          ),
                          ListTile(
                            trailing: Icon(Icons.dark_mode),
                            onTap: () async {
                              Get.changeThemeMode(ThemeMode.dark);
                              await SpData.setboolTheme(SpData.themekey, false);
                            },
                            title: Text("dark".tr),
                          )
                        ],
                      ));
                },
                child: Text('bottomSheet'.tr)),
            SizedBox(
              height: 15,
            ),
            Divider(),

            TextButton(
                onPressed: () {
                  Get.back(result: {"id": "123456"});
                },
                child: Text("back".tr)),
            Divider(),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Get.updateLocale(Locale("en", "US"));
                    },
                    child: Text("English")),
                TextButton(
                    onPressed: () {
                      Get.updateLocale(Locale("hi", "IN"));
                    },
                    child: Text("hindi")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
