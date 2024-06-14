import 'package:get/get.dart';
import 'package:getx_todo/utils/routes/routes_name.dart';
import 'package:getx_todo/view/home.dart';
import 'package:getx_todo/view/splash_screen.dart';

final routesList = [
  GetPage(
      name: RoutesName.splash,
      page: () => SplashScreen(),
      transition: Transition.downToUp),
  GetPage(
      name: RoutesName.home,
      page: () => Home(),
      transition: Transition.downToUp,
      transitionDuration: Duration(microseconds: 6)),
];
