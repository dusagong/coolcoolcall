import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/setting/2/aiVoiceList.dart';
import 'package:coolcoolcall/setting/2/sleepAlarm.dart';
import 'package:coolcoolcall/setting/2/wakeAlarm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Set2 extends StatefulWidget {
  Set2({super.key});

  @override
  _Set2State createState() => _Set2State();
}

class _Set2State extends State<Set2> {
  BoxDecoration touched = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      // style: BorderStyle.solid,
      color: Color(0xff686572),
      // color: Color(0xffE4DDEA),
      width: 2,
    ),
    color: Color(0xff060713),
    boxShadow: [
      BoxShadow(
        color: Color(0xffE4DDEA),
        blurRadius: 19.0,
        offset: Offset(0, 0),
      ),
    ],
  );

  BoxDecoration initial = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      // style: BorderStyle.solid,
      color: Colors.transparent,
      // color: Color(0xffE4DDEA),
      width: 2,
    ),
    color: Color(0xff060713),
    boxShadow: [
      BoxShadow(
        // color: Color.fromRGBO(228, 221, 234, 0.25),
        color: Color(0x40E4DDEA),
        blurRadius: 8.0,
        offset: Offset(-4, -4),
      ),
      BoxShadow(
        color: Color(0xff000215),
        blurRadius: 24.0,
        offset: Offset(4, 4),
      ),
      BoxShadow(
        color: Color(0xff000000),
        blurRadius: 4.0,
        offset: Offset(0, 4),
      ),
    ],
  );
  bool isTapped1 = false;

  void updateShadow1(bool isTapped1) {
    setState(() {
      this.isTapped1 = isTapped1;
    });
  }

  bool isTapped2 = false;

  void updateShadow2(bool isTapped2) {
    setState(() {
      this.isTapped2 = isTapped2;
    });
  }

  bool isTapped3 = false;

  void updateShadow3(bool isTapped3) {
    setState(() {
      this.isTapped3 = isTapped3;
    });
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
        title: Text("서비스 설정",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        backgroundColor: Color(0xff060713),
        elevation: 0.0,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text("알람 전화 방식",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTapDown: (_) {
              updateShadow1(true); // Set the shadow when touched
            },
            onTapUp: (_) {
              updateShadow1(false);
              // Set the initial shadow when released
            },
            onTap: () {
              Get.to(() => SleepAlarm(),
                  transition: Transition.fadeIn,
                  duration: Duration(
                    milliseconds: 700,
                  ));
            },
            child: Container(
              width: 354.7760009765625,
              height: 67,
              decoration: isTapped1 ? touched : initial,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/Setting/2/setmoon.png",
                    width: 18,
                    height: 22.5,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("취침 알람 전화",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTapDown: (_) {
              updateShadow2(true); // Set the shadow when touched
            },
            onTapUp: (_) {
              updateShadow2(false);
              // Set the initial shadow when released
            },
            onTap: () {
              Get.to(() => WakeAlarm(),
                  transition: Transition.fadeIn,
                  duration: Duration(
                    milliseconds: 700,
                  ));
            },
            child: Container(
              width: 354.7760009765625,
              height: 67,
              decoration: isTapped2 ? touched : initial,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/Setting/2/setsun.png",
                    width: 18,
                    height: 22.5,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("기상 알람 전화",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTapDown: (_) {
              updateShadow3(true); // Set the shadow when touched
            },
            onTapUp: (_) {
              updateShadow3(false);
              // Set the initial shadow when released
            },
            onTap: () {
              Get.to(() => AiVoice(),
                  transition: Transition.fadeIn,
                  duration: Duration(
                    milliseconds: 700,
                  ));
            },
            child: Container(
              width: 354.7760009765625,
              height: 67,
              decoration: isTapped3 ? touched : initial,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/Setting/2/setAI.png",
                    width: 16,
                    height: 18,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("AI 목소리 목록",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)))
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
