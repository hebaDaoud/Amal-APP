import 'package:get/get.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/middleware/mymiddleware.dart';
import 'package:workapp/view_controller/account_type/account_type.dart';
import 'package:workapp/view_controller/login/login.dart';
import 'package:workapp/view_controller/onboarding/onboarding1.dart';
import 'package:workapp/view_controller/onboarding/onboarding2.dart';
import 'package:workapp/view_controller/onboarding/onboarding3.dart';
import 'package:workapp/view_controller/otp/otp.dart';
import 'package:workapp/view_controller/splash/splash.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Splash()),
  GetPage(name: AppRoute.onboarding1, page: () => const Onboarding1()),
  GetPage(name: AppRoute.onboarding2, page: () => const Onboarding2()),
  GetPage(name: AppRoute.onboarding3, page: () => const Onboarding3()),
  GetPage(
      name: AppRoute.login,
      page: () => const Login(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.otp, page: () => const Otp()),
  GetPage(name: AppRoute.accountType, page: () => const AccountType()),
];
