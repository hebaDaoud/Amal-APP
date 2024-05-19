import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:workapp/constants/appcolor.dart';

class BtnsTabbar extends StatelessWidget {
  const BtnsTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            backgroundColor: Colors.white,
            unselectedBackgroundColor: Colors.white,
            unselectedLabelStyle:
                const TextStyle(color: Colors.black54, fontFamily: "Agnadeen"),
            labelStyle: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: "Agnadeen"),
            borderWidth: 1.5,
            borderColor: AppColor.primaryColor,
            unselectedBorderColor: Colors.black54,
            contentPadding: const EdgeInsets.symmetric(horizontal: 18),
            tabs: const [
              Tab(
                icon: Icon(Icons.house_outlined),
                text: "منازل",
              ),
              Tab(
                icon: Icon(Icons.apartment_outlined),
                text: "شقق",
              ),
              Tab(
                icon: Icon(Icons.blinds_closed_rounded),
                text: "مباني",
              ),
              Tab(
                icon: Icon(Icons.hotel_outlined),
                text: "فنادق",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
