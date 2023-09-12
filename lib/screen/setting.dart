import 'package:coolcoolcall/screen/call.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('환경설정'), actions: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            Get.offAll(() => Home());
          },
        ),
      ]),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              '한동님, 최근 겪고 있는\n수면 상태에 알맞는 것을 골라주세요.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                // height: 1.2575 * ffem / fem,
                color: Color(0xfffdeec5),
              ),
            )
          ],
        ),
      )),
    );
  }
}
