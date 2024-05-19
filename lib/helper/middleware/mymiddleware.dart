import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("LoggedIn") == "1") {
      if (myServices.sharedPreferences.getString("userType") == "DON") {
        return const RouteSettings(name: AppRoute.homeDon);
      }else {
        return const RouteSettings(name: AppRoute.homeBen);
      }
    }
    return null;
  }
}
