import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Future<void> storeDataInFirestore(
      bool first_, bool second_, bool third_) async {
    try {
      await FirebaseFirestore.instance
          .collection('불면 상태 입력')
          .doc('a')
          .set({'first': first_, 'second': second_, 'third': third_});
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  bool first = false;
  bool second = false;
  bool third = false;
  void onSaveButtonPressed() {
    storeDataInFirestore(first, second, third);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double conwidth = width * 335 / 390;
    double conhight = height * 126 / 844;

    return Scaffold(
      backgroundColor: Color(0xff060713),
      appBar: AppBar(
        toolbarHeight: height * 47 / 844,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 27.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
        ),
        title: Text("불면 상태 입력",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    first = !first;
                  });
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: first
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Color(0xff686572),
                            // color: Color(0xffE4DDEA),
                            width: 3,
                          ),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffE4DDEA),
                              blurRadius: 19.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        )
                      : (BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Colors.transparent,
                            // color: Color(0xffE4DDEA),
                            width: 3,
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
                        )),
                  padding: EdgeInsets.fromLTRB(
                      width * 37 / 390.0, 0, width * 34 / 390.0, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/onboarding/GumBuk4.png",
                        width: 94,
                        height: 73,
                      ),
                      SizedBox(
                        width: 24,
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
              ),
              SizedBox(
                height: height * 22 / 844,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    second = !second;
                  });
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: second
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Color(0xff686572),
                            // color: Color(0xffE4DDEA),
                            width: 3,
                          ),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffE4DDEA),
                              blurRadius: 19.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        )
                      : (BoxDecoration(
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Colors.transparent,
                            // color: Color(0xffE4DDEA),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(
                          //   style: BorderStyle.solid,
                          //   width: 1,
                          // ),
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
                        )),
                  padding: EdgeInsets.fromLTRB(
                      width * 37 / 390.0, 0, width * 34 / 390.0, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/onboarding/Jada4.png",
                        width: 76.22086,
                        height: 101.81,
                      ),
                      SizedBox(
                        width: 43,
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
              ),
              SizedBox(
                height: height * 22 / 844,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    third = !third;
                  });
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: third
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Color(0xff686572),
                            // color: Color(0xffE4DDEA),
                            width: 3,
                          ),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffE4DDEA),
                              blurRadius: 19.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        )
                      : (BoxDecoration(
                          border: Border.all(
                            // style: BorderStyle.solid,
                            color: Colors.transparent,
                            // color: Color(0xffE4DDEA),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(
                          //   style: BorderStyle.solid,
                          //   width: 1,
                          // ),
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
                        )),
                  padding: EdgeInsets.fromLTRB(
                      width * 37 / 390.0, 0, width * 26 / 390.0, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/onboarding/bimong4.png",
                        width: 95,
                        height: 94.00258,
                      ),
                      SizedBox(
                        width: 29,
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
              ),
              SizedBox(
                height: height * 88 / 844,
              ),
              if (first == false && second == false && third == false)
                Container(
                    width: 310,
                    height: height * 75 / 844,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
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
                    child: Center(
                      child: Text(
                        "다음",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            // color: Colors.white)
                            color: Color.fromRGBO(154, 154, 154, 1)),
                      ),
                    ))
              else
                GestureDetector(
                  onTap: () {
                    onSaveButtonPressed();
                    Get.offAll(() => Home(),
                        transition: Transition.native,
                        duration: Duration(
                          milliseconds: 700,
                        ));
                  },
                  child: Container(
                      width: 310,
                      height: height * 75 / 844,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          // style: BorderStyle.solid,
                          color: Color(0xff686572),
                          // color: Color(0xffE4DDEA),
                          width: 3,
                        ),
                        color: Color(0xff060713),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE4DDEA),
                            blurRadius: 19.0,
                            offset: Offset(0, 0),
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
