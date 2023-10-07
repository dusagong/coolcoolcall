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
        title: Text("건의 사항",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text("알람 전화 방식",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
                onTap: (){
                  Get.to(()=>Question());
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: BoxDecoration(
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
                  ),
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
              GestureDetector(
                onTap: (){
                  Get.to(()=>Require());
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: BoxDecoration(
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
                  ),
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
