import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:getx_todo/controller/languageController.dart';
import 'package:getx_todo/res/language.dart';
import 'package:getx_todo/res/sheardpraf.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // **********
  RxInt _number = 0.obs;
  RxString _name = "name".obs;
  // **********
  RxBool check = false.obs;
  final name = Get.arguments["name"];
  final controlerlanguage = Get.put(Languagecontroller());
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
            // Row(
            //   children: [
            //     TextButton(
            //         onPressed: () {
            //           Get.updateLocale(Locale("en", "US"));
            //         },
            //         child: Text("English")),
            //     TextButton(
            //         onPressed: () {
            //           Get.updateLocale(Locale("hi", "IN"));
            //         },
            //         child: Text("hindi")),
            //   ],
            // )
            DropdownButton(
                value: controlerlanguage.language,
                items: Language.language
                    .map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.languageName)))
                    .toList(),
                onChanged: (value) =>
                    controlerlanguage.setlanguage(language: value!)),
            ClipPath(
              clipper: mycliper(),
              child: Container(
                color: Colors.amber,
                height: 45,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("my name is ankit"),
                    Obx(() => Switch(
                        value: check.value,
                        activeColor: Colors.black,
                        inactiveThumbColor: Colors.white,
                        onChanged: (newvalue) {
                          check.value = !check.value;
                        }))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class mycliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(40, 0);
    path.quadraticBezierTo(0, size.height / 2, 0, size.height / 6);

    path.lineTo(size.height, size.width);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
