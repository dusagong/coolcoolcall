import 'dart:async';

import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(milliseconds: 3500), () {
      Get.offAll(() => FakeLogin(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 700)); // Navigate to the home route
    });
    return Container(
      child: Image.asset(
        "assets/background/Comp 2_1.gif",
        fit: BoxFit.cover,
      ),
    );
  }
}
