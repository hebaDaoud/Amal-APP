import 'package:flutter/material.dart';
import 'package:workapp/constants/appcolor.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomBotton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 53,
      minWidth: MediaQuery.of(context).size.width - 48,
      color: AppColor.primaryColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text(text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}
