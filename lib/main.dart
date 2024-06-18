import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/res/language.dart';
import 'package:getx_todo/utils/routes/routes.dart';
import 'package:getx_todo/utils/routes/routes_name.dart';

import 'package:getx_todo/res/sheardpraf.dart';

Future<void> main() async {
  runApp(const MyApp());
  await SpData.getPref();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      locale: Locale("en", "US"),
      // fallbackLocale: Locale("en", "US"),
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // home: SplashScreen(),
      initialRoute: RoutesName.splash,
      getPages: routesList,
    );
  }
}
