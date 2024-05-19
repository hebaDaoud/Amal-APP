import 'package:flutter/material.dart';
import 'package:workapp/constants/appcolor.dart';

class StepProgressBar extends StatelessWidget {
  final int steps;
  final int doneTo;

  const StepProgressBar({super.key, required this.steps, required this.doneTo});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetsList = [];
    for (int i = 0; i < steps; i++) {
      widgetsList.add(Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: i < doneTo ? AppColor.primaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColor.primaryColor)),
              child: Center(
                child: Text(
                  '${i + 1}',
                  style: TextStyle(
                      color: i < doneTo ? Colors.white : Colors.black54,
                      fontSize: 17),
                ),
              ),
            ),
            i + 1 < steps
                ? Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 3 - 30,
                    color: AppColor.primaryColor,
                  )
                : const SizedBox()
          ]));
    }
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...widgetsList,
      ],
    );
  }
}
