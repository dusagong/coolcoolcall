import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/setting/4/question.dart';
import 'package:coolcoolcall/setting/4/require.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Set4 extends StatefulWidget {
  Set4({super.key});

  @override
  _Set4State createState() => _Set4State();
}

class _Set4State extends State<Set4> {
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
        title: Text("건의 사항",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white
            )),
        backgroundColor: Color(0xff060713),
        elevation: 0.0,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 62,
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
              Get.to(() => Question(),
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
                    "assets/Setting/4/candy.png",
                    width: 17,
                    height: 18,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("자주 묻는 질문 보기",
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
              Get.to(() => Require(),
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
                    "assets/Setting/4/question.png",
                    width: 17,
                    height: 27,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("건의 사항 작성하러 가기",
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
