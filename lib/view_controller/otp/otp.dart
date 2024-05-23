import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/widgets/buttons/custombutton.dart';
import 'package:workapp/view_controller/otp/otp_controller.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OtpController());
    return GetBuilder<OtpController>(
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                // iconTheme: const IconThemeData(color: Colors.black45),
              ),
              body: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: SvgPicture.asset(
                        'assets/images/otp_verification.svg',
                        width: 250,
                        height: 250,
                      )),
                      Container(height: 40),
                      Text(
                        "Verification code".tr,
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Enter verification code sent to your phone".tr,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 60),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: OtpTextField(
                          mainAxisAlignment: MainAxisAlignment.center,
                          fieldWidth: 60,
                          fieldHeight: 60,
                          borderRadius: BorderRadius.circular(12),
                          cursorColor: Colors.grey,
                          // fillColor: Colors.red,
                          numberOfFields: 4,
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          showFieldAsBox: true,
                          onSubmit: (value) {
                            // controller.val = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 60),
                      CustomBotton(
                        text: "Verifiy".tr,
                        onPressed: () {
                          Get.toNamed(AppRoute.accountType);
                        },
                      ),
                      const SizedBox(height: 25),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text("dont_receive".tr,
                      //         style: const TextStyle(fontSize: 14)),
                      //     InkWell(
                      //       onTap: () {},
                      //       child: Text("resend_code".tr,
                      //           style: const TextStyle(
                      //               color: AppColor.primaryColor,
                      //               fontWeight: FontWeight.bold)),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ));
  }
}
