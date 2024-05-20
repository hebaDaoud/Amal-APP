import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
          child: Image.asset(
            'assets/images/onboarding1.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height / 4),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(50, -20),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
