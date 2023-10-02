import 'dart:async';

import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  bool isOverlayVisible = false;
  Timer? _overlayTimer; // Declare a Timer variable

  void _toggleOverlay() {
    setState(() {
      isOverlayVisible = !isOverlayVisible;
    });

    if (isOverlayVisible) {
      // Start a timer to hide the overlay after 3 seconds
      _overlayTimer = Timer(Duration(seconds: 3), () {
        setState(() {
          isOverlayVisible = false;
        });
      });
    } else {
      // If overlay is not visible, cancel the timer
      _overlayTimer?.cancel();
    }
  }

  @override
  void dispose() {
    // Make sure to cancel the timer when the widget is disposed
    _overlayTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/background/calling.png'), // 배경 이미지
        ),
      ),
      child: GestureDetector(
        onTap: () {
          _toggleOverlay();
        },
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: isOverlayVisible
                ? Stack(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 500,
                            ),
                            Text(
                                "              전화를 종료하고 싶으시면\n          잠금 또는 음량 버튼을 누르거나,\n   화면을 터치하여 종료하기 버튼을 누르세요",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffE5DDEA),
                                )),
                            if (isOverlayVisible)
                              GestureDetector(
                                  onTap: () {
                                    Get.offAll(Home());
                                  },
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 55,
                                      ),
                                      Image.asset("assets/Call/closeMoon.png"),
                                      Text(
                                        "전화 종료하기",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(229, 221, 234, 1),
                                        ),
                                      ),
                                    ],
                                  )),
                          ],
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 500,
                            ),
                            Text(
                                "              전화를 종료하고 싶으시면\n          잠금 또는 음량 버튼을 누르거나,\n   화면을 터치하여 종료하기 버튼을 누르세요",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffE5DDEA),
                                )),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _toggleOverlay();
                          });
                        },
                        child: Container(
                          color: Colors.black.withOpacity(
                              0.5), // Black overlay with 50% opacity
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),

                      // Visibility(
                      //   visible: isOverlayVisible,
                      //   child: Container(
                      //     color: Colors.black.withOpacity(1), // Black overlay with 50% opacity
                      //     width: MediaQuery.of(context).size.width,
                      //     height: MediaQuery.of(context).size.height,
                      //   ),
                      // ),
                    ],
                  )),
      ),
    );
  }
}
