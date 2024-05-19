import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workapp/constants/appcolor.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  const CustomPhoneField({super.key, this.valid, this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: AppColor.gray,
              ),
              height: 52,
              child: TextFormField(
                controller: mycontroller,
                validator: valid,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    hintText: "5XXXXXXXXX",
                    hintStyle: TextStyle(fontSize: 16),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: AppColor.gray,
              ),
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "966",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset("assets/images/SA_flag.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
