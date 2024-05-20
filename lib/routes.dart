import 'package:get/get.dart';
import 'package:workapp/constants/approutes.dart';
// import 'package:workapp/helper/middleware/mymiddleware.dart';
import 'package:workapp/view_controller/onboarding/onboarding1.dart';
import 'package:workapp/view_controller/splash/splash.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Splash()),
  // GetPage(name: AppRoute.login, page: () => const Login(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.onboarding1, page: () => const Onboarding1()),

];
