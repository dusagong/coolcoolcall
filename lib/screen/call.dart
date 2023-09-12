import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 230,
            ),
            Text("한동아!\n오늘도 고생했어,\n같이 자러 갈래?",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 90,
            ),

          ],
        ),
      )),
    );
  }
}
