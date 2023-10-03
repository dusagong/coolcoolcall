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
  late Widget mychoice;
  double width_ = 1000.0; // Initialize with default values
  double height_ = 2000.0;
  @override
  void initState() {
    super.initState();
    mychoice = b();
  }

  void _toggleOverlay() {
    setState(() {
      isOverlayVisible = !isOverlayVisible;
      isOverlayVisible ? mychoice = a() : mychoice = b();
    });

    if (isOverlayVisible) {
      _overlayTimer = Timer(Duration(seconds: 2), () {
        setState(() {
          isOverlayVisible = false;
          mychoice = b();
        });
      });
    } else {
      _overlayTimer?.cancel();
    }
  }

  @override
  void dispose() {
    _overlayTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width_ = MediaQuery.of(context).size.width;
    height_ = MediaQuery.of(context).size.height;
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
            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 2500),
              key: ValueKey<Widget>(mychoice),
              child: mychoice,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            )),
      ),
    );
  }

  Widget a() {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 520,
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
                            color: Color.fromRGBO(229, 221, 234, 1),
                          ),
                        ),
                      ],
                    )),
            ],
          ),
        ),
      ],
    );
  }

  Widget b() {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 520,
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
              color: Colors.black
                  .withOpacity(0.5), // Black overlay with 50% opacity
              width: width_,
              height: height_),
        ),
      ],
    );
  }
}
