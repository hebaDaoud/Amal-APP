import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workapp/constants/appcolor.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController? mycontroller;
  final TextInputType textInputType;
  final String? image;
  final bool? secretText;
  final String hint;
  final String? Function(String?)? valid;

  const CustomTextFiled(
      {super.key,
      required this.textInputType,
      required this.hint,
      this.image,
      this.secretText,
      this.valid,
      this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: AppColor.gray,
      ),
      height: 52,
      child: TextFormField(
        controller: mycontroller,
        validator: valid,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        obscureText: secretText ?? false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            icon: image == ''
                ? const SizedBox()
                : SvgPicture.asset("assets/images/$image.svg"),
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 16),
            border: InputBorder.none),
      ),
    );
  }
}
