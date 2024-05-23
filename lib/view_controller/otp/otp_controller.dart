import 'package:get/get.dart';
import 'package:workapp/Network/api.dart';
import 'package:workapp/Network/api_links.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/functions/user_info.dart';
import 'package:workapp/helper/services/services.dart';

class OtpController extends GetxController {
  // String? mobile = '';
  // String? userType = '';
  // String? isLogin = '';
  // String val = '';
  // Map<String, dynamic> loginData = Get.arguments;
  // MyServices myServices = Get.find();

  @override
  void onInit() {
    super.onInit();
    // mobile = loginData['mobile'];
    // userType = loginData['userType'];
    // isLogin = loginData['isLogin'];
  }

  // login() async {
  //   if (val.isNotEmpty) {
  //     Map<String, dynamic> body = {
  //       "mobile": mobile,
  //       "user_type": userType,
  //       "sms_code": val
  //     };
  //     Map<String, dynamic> responseData = await Api.makeApiRequest(
  //       url: ApiLinks.otp,
  //       method: 'POST',
  //       body: body,
  //     );

  //     if (responseData["success"] == false) {
  //       responseData.printError();
  //     } else {
  //       print('Data: ${responseData['data']}');
  //       await saveUserInfo(responseData['data']);
  //       myServices.sharedPreferences.setString("LoggedIn", "1");
  //       myServices.sharedPreferences.setString("userType", "$userType");
  //       if (userType == "DON") {
  //         Get.offAllNamed(AppRoute.homeDon);
  //       } else {
  //         if (isLogin == 'yes') {
  //           if (responseData['data']['first_time'] == true) {
  //             Get.offAllNamed(AppRoute.beneficiarySignup1);
  //           } else {
  //             Get.offAllNamed(AppRoute.homeBen);
  //           }
  //         } else {
  //           Get.offAllNamed(AppRoute.beneficiarySignup1);
  //         }
  //       }
  //     }
  //   } else {}
  // }
}
