import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workapp/constants/appcolor.dart';

class UploadFileBox extends StatelessWidget {
  final String imageName;
  final String title;
  final String? subtitle;

  const UploadFileBox({
    Key? key,
    required this.imageName,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [6, 3],
      borderPadding: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: Colors.black26,
      strokeWidth: 1.5,
      radius: const Radius.circular(100),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/$imageName.svg",
              width: 38,
              height: 38,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style:
                  const TextStyle(color: AppColor.primaryColor, fontSize: 18),
            ),
            if (subtitle != null && subtitle!.isNotEmpty)
              Text(
                subtitle!,
                style: TextStyle(
                    color: subtitle == "GIF, JPG, PNG حتى 1MB"
                        ? Colors.black54
                        : AppColor.primaryColor,
                    fontWeight: subtitle == "GIF, JPG, PNG حتى 1MB"
                        ? FontWeight.normal
                        : FontWeight.bold,
                    fontSize: 14),
              ),
          ],
        ),
      ),
    );
  }
}
