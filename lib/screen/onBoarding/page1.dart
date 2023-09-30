import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coolcoolcall/screen/onBoarding/page2.dart';

class Page1 extends StatefulWidget {
  Page1({super.key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController nameC = TextEditingController();
  TextEditingController ageC = TextEditingController();

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
    String enteredName = nameC.text;
    storeDataInFirestore(enteredName);
    Get.to(() => Page2());
  }
  FocusNode nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background.png"), // 배경 이미지
          ),
        ),
        child: Scaffold(
          backgroundColor: Color(0xff060713),
          appBar: AppBar(
            title: Text("기본 가입 정보",
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Text("기본 정보",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  //첫번째 박스
                  Container(
                    width: 358,
                    height: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                      color: Color(0xff060713),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("이름",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                              Text("나이",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 139,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff04060f),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      spreadRadius: 3.0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: nameC,
                                  focusNode: nameFocusNode,
                                  decoration: InputDecoration(
                                    hintText: 'ex. 김한동',
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 139,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff04060f),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      spreadRadius: 3.0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: ageC,
                                  decoration: InputDecoration(
                                    hintText: 'ex. 24',
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Text("수면 주기",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text("*원하는 취침/기상 시간을 입력해 주세요!",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 358,
                    height: 221,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff060713),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/onboarding/Subtract.png",
                              width: 22,
                              height: 20.53333282470703,
                            ),
                            Text("취침시간",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 139,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff04060f),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0,
                                  ),
                                ],
                              ),

                              // child:
                              child: TextField(
                                controller: nameC,
                                decoration: InputDecoration(
                                  hintText: '        23',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(":",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white)),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 139,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff04060f),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: nameC,
                                decoration: InputDecoration(
                                  hintText: '        00',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/onboarding/sun.png",
                              width: 22,
                              height: 20.53333282470703,
                            ),
                            Text("기상시간",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 139,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff04060f),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: nameC,
                                decoration: InputDecoration(
                                  hintText: '         7',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(":",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white)),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 139,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff04060f),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: nameC,
                                decoration: InputDecoration(
                                  hintText: '        30',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "입력한 시간에 자동으로 전화와 모닝콜이 수신됩니다.\n          환경설정에서 나중에 변경 가능합니다.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(
                    height: 100,
                  ),
                  //맨 밑
                  GestureDetector(
                    onTap: () {
                      onSaveButtonPressed();
                    },
                    child: Container(
                      width: 310,
                      height: 75,
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
                                color: Color.fromRGBO(154, 154, 154, 1))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
