import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 600,
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(Home());
              },
              child: Image.asset("assets/Call/closeMoon.png"),
            ),
            Text("전화 종료하기",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(229, 221, 234, 1)))
          ],
        ),
      )),
    );
  }
}
