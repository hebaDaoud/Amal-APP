import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workapp/constants/appcolor.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/widgets/buttons/custombutton.dart';
import 'package:workapp/helper/widgets/textfields/customphonefield.dart';
import 'package:workapp/view_controller/login/login_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                // iconTheme: const IconThemeData(color: Colors.black45),
              ),
              body: Form(
                key: controller.formstate,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Logo.svg',
                          width: 120,
                          height: 54,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 42),
                        Text(
                          "Sign in".tr,
                          style: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Enter phone number for signin or signup".tr,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 28),
                        CustomPhoneField(mycontroller: controller.phoneNumber),
                        const SizedBox(height: 60),
                        CustomBotton(
                          text: "Contineu".tr,
                          onPressed: () {
                            // controller.login();
                            Get.toNamed(AppRoute.otp);
                          },
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(width: 60, height: 1, color: Colors.grey),
                            Text("Enter with sotialmedia".tr,
                                style: const TextStyle(fontSize: 14)),
                            Container(width: 60, height: 1, color: Colors.grey),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: SvgPicture.asset(
                                'assets/images/apple.svg',
                              )),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: SvgPicture.asset(
                                      'assets/images/twitter.svg')),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: SvgPicture.asset(
                                      'assets/images/google.svg')),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: SvgPicture.asset(
                                      'assets/images/facebook.svg')),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
