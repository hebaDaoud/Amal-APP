import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workapp/Network/api.dart';
import 'package:workapp/Network/api_links.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/functions/checkinternet.dart';
import 'package:workapp/helper/functions/showdialog.dart';

class LoginController extends GetxController {
  String? userType;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController phoneNumber;

  @override
  void onInit() async {
    phoneNumber = TextEditingController();

    bool internetStatus = await checkInternet();
    if (!internetStatus) {
      alertDialog("لا يوجد إنترنت", "يجب التأكد من اتصال الشبكة");
    }

    super.onInit();
  }

  @override
  void dispose() {
    phoneNumber.dispose();
    super.dispose();
  }

  login() async {
    if (phoneNumber.text.isNotEmpty) {
      Map<String, dynamic> body = {
        "mobile": phoneNumber.text,
      };
      Map<String, dynamic> responseData = await Api.makeApiRequest(
        url: ApiLinks.login,
        method: 'POST',
        body: body,
      );

      if (responseData["success"] == false) {
        responseData.printError();
      } else {
        print('Data: ${responseData['data']}');
        Get.toNamed(AppRoute.otp, arguments: {
          'mobile': phoneNumber.text,
          'userType': responseData['data']['user_type'],
          'isLogin': 'yes'
        });
      }
    } else {
      alertDialog("تنبيه", "أدخل رقم الهاتف");
    }
  }
}
