import 'dart:async';

import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(milliseconds: 2900), () {
      Get.offAll(() => FakeLogin(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 1200)); // Navigate to the home route
    });
    return Container(
      child: Image.asset(
        "assets/background/Comp4.gif",
        fit: BoxFit.cover,
      ),
    );
  }
}
