import 'package:workapp/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertDialog(String title, String message, [void Function()? onConfirm]) {
  Get.defaultDialog(
    title: title,
    content: Text(message),
    confirm: ElevatedButton(
      onPressed: () {
        if (onConfirm != null) {
          onConfirm.call();
        } else {
          Get.back();
        }
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColor.primaryColor)),
      child: Text('OK'.tr),
    ),
    cancel: onConfirm == null
        ? null
        : ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
            child: Text('cancel'.tr),
          ),
  );
}
