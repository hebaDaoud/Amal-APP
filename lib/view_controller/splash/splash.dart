import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:workapp/constants/approutes.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAllNamed(AppRoute.login);
      await Geolocator.requestPermission();
    });
    return Scaffold(
      body: Center(
            child: SvgPicture.asset(
              'assets/images/Logo.svg',
              width: 120,
              height: 120,
              color: Colors.black,
            ),
          ),
    );
  }
}
