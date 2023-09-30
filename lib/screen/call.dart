import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alan_voice/alan_voice.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  _MyHomePageState() {
    /// Init Alan Button with project key from Alan AI Studio
    AlanVoice.addButton(
        "962169b42efdf8e9d5933dc2c9b7cc752e956eca572e1d8b807a3e2338fdd0dc/stage");

    /// Handle commands from Alan AI Studio
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
    });
  }

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
