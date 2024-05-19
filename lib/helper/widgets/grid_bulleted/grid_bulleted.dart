import 'package:flutter/material.dart';

class GridBulleted extends StatelessWidget {
  Text bulleted(String txt) {
    return Text("\u2022 " "$txt");
  }

  final List<String> strList;
  final List<Text> textList;

  const GridBulleted(
      {super.key, required this.textList, required this.strList});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text("\u2022 " "$textList"),
      ],
    );
  }
}
