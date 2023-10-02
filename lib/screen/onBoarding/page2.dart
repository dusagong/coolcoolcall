import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coolcoolcall/screen/onBoarding/page2.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page2> {
  Future<void> storeDataInFirestore(String text) async {
    try {
      await FirebaseFirestore.instance.collection('기본 가입 정보').doc('a').set({
        'name': text, // Store the text from nameC in the 'name' field
      });
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  void onSaveButtonPressed() {
    // String enteredName = nameC.text;
    // storeDataInFirestore(enteredName);
    Get.to(() => Page2());
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
        title: Text("불면 상태 입력",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        backgroundColor: Color(0xff060713),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 105 / 844,
              ),
              Container(
                width: conwidth,
                height: conhight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff060713),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(
                    width * 37 / 390.0, 0, width * 34 / 390.0, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/onboarding/GumBuk.png",
                      width: 94,
                      height: 73,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("꿈벅꿈벅",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("잠에 들기가 어려워\n오랜시간 뒤척여요",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 22 / 844,
              ),
              Container(
                width: conwidth,
                height: conhight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff060713),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(
                    width * 37 / 390.0, 0, width * 34 / 390.0, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/onboarding/Jada.png",
                      width: 76.22086,
                      height: 101.81,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("자다깨다",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("하룻밤 중에 자다가\n깨는 경우가 많아요",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 22 / 844,
              ),
              Container(
                width: conwidth,
                height: conhight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff060713),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(
                    width * 37 / 390.0, 0, width * 31 / 390.0, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/onboarding/bimong.png",
                      width: 95,
                      height: 94.00258,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("비몽사몽",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("자다가 깼을 때 다시\n잠에 들기 힘들어요",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 88 / 844,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => Home());
                },
                child: Container(
                    width: conwidth,
                    height: height * 75 / 844,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff060713),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text("다음",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
