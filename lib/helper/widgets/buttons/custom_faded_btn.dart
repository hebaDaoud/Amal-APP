import 'package:flutter/material.dart';

class CustomFadedBtn extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomFadedBtn({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 2.0, color: Colors.black12),
          ),
          child: Text(text,
              style: const TextStyle(fontSize: 16.0, color: Colors.black54))),
    );
  }
}
