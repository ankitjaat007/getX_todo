import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),

      home: Home(),
    );
  }
}
