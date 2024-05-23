import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/helper/widgets/buttons/custombutton.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(children: [
            Center(
              child: Image.asset(
                'assets/images/onboarding2.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height / 5),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(1),
                        spreadRadius: 80,
                        blurRadius: 80,
                        offset: const Offset(0, -20),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoute.login);
                  },
                  child: Text(
                    'skip'.tr,
                    style: const TextStyle(fontSize: 21, color: Colors.black),
                  ),
                ),
                Expanded(
                    child: SizedBox(width: MediaQuery.of(context).size.width)),
                Text(
                  'Looking for free work?'.tr,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                const SizedBox(height: 17),
                Text(
                  'Create your profile and get best free work'.tr,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(1.5)),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.5)),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(1.5)),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                    child: CustomBotton(
                        onPressed: () {
                          Get.toNamed(AppRoute.onboarding3);
                        },
                        text: "Contineu")),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
