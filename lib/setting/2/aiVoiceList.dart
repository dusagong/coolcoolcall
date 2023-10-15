import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/setting/2/sleepAlarm.dart';
import 'package:coolcoolcall/setting/2/wakeAlarm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AiVoice extends StatefulWidget {
  AiVoice({super.key});

  @override
  _AiVoiceState createState() => _AiVoiceState();
}

class _AiVoiceState extends State<AiVoice> {


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
  bool isTapped4 = false;

  void updateShadow4(bool isTapped4) {
    setState(() {
      this.isTapped4 = isTapped4;
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
        toolbarHeight: height * 47 / 844,
        title: Text("AI 목소리 선택",
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
            height: 20,
          ),
          GestureDetector(
             onTapDown: (_) {
                  updateShadow1(true); // Set the shadow when touched
                },
                onTapUp: (_) {
                  updateShadow1(false);
                   // Set the initial shadow when released
                },
                onTap: (){
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration:isTapped1?touched:initial,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                     
                      Text("쿨쿨이1",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                 onTapDown: (_) {
                  updateShadow2(true); // Set the shadow when touched
                },
                onTapUp: (_) {
                  updateShadow2(false);
                   // Set the initial shadow when released
                },
                onTap: (){
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: isTapped2?touched:initial,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                     
                      Text("쿨쿨이2",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                 onTapDown: (_) {
                  updateShadow3(true); // Set the shadow when touched
                },
                onTapUp: (_) {
                  updateShadow3(false);
                   // Set the initial shadow when released
                },
                onTap: (){
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: isTapped3?touched:initial,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                     
                      Text("쿨쿨이3",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                 onTapDown: (_) {
                  updateShadow4(true); // Set the shadow when touched
                },
                onTapUp: (_) {
                  updateShadow4(false);
                   // Set the initial shadow when released
                },
                onTap: (){
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration:isTapped4?touched:initial,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                     
                      Text("쿨쿨이4",
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
