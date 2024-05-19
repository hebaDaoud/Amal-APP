import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final canGoBack = Navigator.canPop(context);

    return AppBar(
      toolbarHeight: 80,
      leadingWidth: 66,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: canGoBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2, top: 2, left: 16.0),
          child: SvgPicture.asset(
            "assets/images/taami.svg",
            width: 52,
            height: 52,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
