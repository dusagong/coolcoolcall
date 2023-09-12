import 'package:coolcoolcall/screen/call.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            Container(
              width: 312,
              height: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff1e1b39),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink(
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                            'assets/HomeWithBack.png'), // Replace with your image path
                        onPressed: null,
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(()=>Call());
                    },
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                            'assets/Call.png'), // Replace with your image path
                        onPressed: null,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(()=>Setting());
                      // Add your onPressed logic for the third button here.
                    },
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                            'assets/Setting.png'), // Replace with your image path
                        onPressed: null,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
