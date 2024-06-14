import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:getx_todo/res/sheardpraf.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // **********
  RxInt _number = 0.obs;
  RxString _name = "ankit".obs;
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
                "$_number my order",
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
                "$_name",
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
                    child: Text('small text')),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      _name(_name.value.toUpperCase());
                    },
                    child: Text('big text')),
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
                  Get.snackbar("ankit", "message are not avelable",
                      borderColor: Colors.amberAccent, borderWidth: 1);
                },
                child: Text('show snakbar')),
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
                      title: "ankit",
                      middleText: "how are you",
                      cancel: Icon(Icons.cancel),
                      confirm: Icon(Icons.done_all));
                },
                child: Text('show dilog')),
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
                            title: Text("light mode"),
                          ),
                          ListTile(
                            trailing: Icon(Icons.dark_mode),
                            onTap: () async {
                              Get.changeThemeMode(ThemeMode.dark);
                              await SpData.setboolTheme(SpData.themekey, false);
                            },
                            title: Text("dark mode"),
                          )
                        ],
                      ));
                },
                child: Text('show bottomsheet')),
            SizedBox(
              height: 15,
            ),
            Divider(),

            TextButton(
                onPressed: () {
                  Get.back(result: {"id": "123456"});
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
