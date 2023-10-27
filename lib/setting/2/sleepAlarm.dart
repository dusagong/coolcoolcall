//글자 변화 자연스럽게
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SleepAlarm extends StatefulWidget {
  SleepAlarm({super.key});

  @override
  _SleepAlarmState createState() => _SleepAlarmState();
}

class _SleepAlarmState extends State<SleepAlarm> {
  bool click = false;
  late Widget mychoice;
  void initState() {
    super.initState();
    mychoice = a();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double conwidth = width * 310 / 390;
    double conhight = height * 126 / 844;

    return Scaffold(
        backgroundColor: Color(0xff060713),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
          toolbarHeight: height * 47 / 844,
          title: Text("취침 알람 전화 설정",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          backgroundColor: Color(0xff060713),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 120,
            ),
            AnimatedSwitcher(
              // switchInCurve: Curves.fastOutSlowIn,
              // switchOutCurve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              // key: ValueKey<Widget>(mychoice),
              child: click ? b() : a(),
              //   transitionBuilder: (Widget child, Animation<double> animation) {
              //   return ScaleTransition(scale: animation, child: child);
              // },
              // mychoice,
              // key: isOverlayVisible ? ValueKey<String>('a') : ValueKey<String>('b'),
            ),
            AnimatedSwitcher(
              // switchInCurve: Curves.fastOutSlowIn,
              // switchOutCurve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 0),
              child: click ? d() : c(),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  click = !click;
                });
                print('$click');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedSwitcher(
                    // switchInCurve: Curves.fastOutSlowIn,
                    // switchOutCurve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 1000),
                    // key: ValueKey<Widget>(mychoice),
                    child: click
                        ? Image.asset("assets/Setting/2/BrightToggleBack.png",
                            width: 280,
                            height: 144.18,
                            key: ValueKey<String>('b1'))
                        : Image.asset("assets/Setting/2/DarkToggleBack.png",
                            width: 280,
                            height: 144.18,
                            key: ValueKey<String>('a1')),
                    //   transitionBuilder: (Widget child, Animation<double> animation) {
                    //   return ScaleTransition(scale: animation, child: child);
                    // },
                    // mychoice,
                    // key: isOverlayVisible ? ValueKey<String>('a') : ValueKey<String>('b'),
                  ),

                  AnimatedPositioned(
                    child: Image.asset(
                      "assets/Setting/2/smallMoon.png",
                      width: 109,
                      height: 144.18,
                    ),
                    duration: Duration(milliseconds: 600),
                    bottom: 4,
                    left: click ? 128 : 0,
                    right: click ? 0 : 152,
                  )

                  // Positioned(
                  //   right: click ? -26 : 2, // Slide in from left or hide to the left
                  //   child: Image.asset(
                  //     "assets/Setting/2/smallMoon.png",
                  //     width: 109,
                  //     height: 144.18,
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ));
  }

  Widget a() {
    return Column(
      key: ValueKey<String>('a'),
      children: [
        Image.asset(
          "assets/Setting/2/BigDarkMoon.png",
          width: 178,
          height: 179,
        ),
      ],
    );
  }

  Widget b() {
    return Column(
      key: ValueKey<String>('b'),
      children: [
        Image.asset(
          "assets/Setting/2/BigBrightMoon.png",
          width: 178,
          height: 179,
        ),
      ],
    );
  }

  Widget c() {
    return Column(
      key: ValueKey<String>('c'),
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          // Wrapping the text in a container with fixed height
          height: 70, // Adjust the height as needed
          width: 300,
          child: Column(
            children: [
              Text(
                "현재 쿨쿨콜 알람이 꺼져있어요.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "취침 전 쿨쿨이의 전화를 싶다면",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "알람을 켜주세요!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget d() {
    return Column(
      key: ValueKey<String>('d'),
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          // Wrapping the text in a container with fixed height
          height: 70, // Adjust the height as needed
          width: 300,
          child: Column(
            children: [
              Text(
                "현재 쿨쿨콜 알람이 켜져있어요.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "취침 전 쿨쿨이의 전화를 받고싶지 않다면",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "알람을 꺼주세요!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffE5DDEA),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
