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
  bool isFirstContainerSelected = true;
  bool isFirstleft = false;
  bool isFirstright = false;
  bool isSecond1left = false;
  bool isSecond1right = false;
  bool isSecond2left = false;
  bool isSecond2right = false;

  TextEditingController nameC = TextEditingController();
  TextEditingController ageC = TextEditingController();
  TextEditingController sleepH = TextEditingController();
  TextEditingController sleepM = TextEditingController();
  TextEditingController wakeH = TextEditingController();
  TextEditingController wakeM = TextEditingController();

  Future<void> storeDataInFirestore(
    String enteredName,
    String enteredAge,
    String enteredSH,
    String enteredSM,
    String enteredWH,
    String enteredWM,
  ) async {
    try {
      await FirebaseFirestore.instance.collection('기본 가입 정보').doc('a').set({
        'name': enteredName, // Store the text from nameC in the 'name' field
        'sleepHour': enteredSH,
        'sleepMinute': enteredSM,
        'wakeHour': enteredWH,
        'wakeMinute': enteredWM,
      });
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  void onSaveButtonPressed() {
    String enteredName = nameC.text;
    String enteredAge = ageC.text;
    String sleepHour = sleepH.text;
    String sleepMinute = sleepM.text;
    String wakeHour = wakeH.text;
    String wakeMinute = wakeM.text;
    storeDataInFirestore(
        enteredName, enteredAge, sleepHour, sleepMinute, wakeHour, wakeMinute);
    Get.to(() => Page2());
  }

  FocusNode nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background/background.png"), // 배경 이미지
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
                  // SizedBox(
                  //   height: 30,
                  // ),
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
                    decoration: isFirstContainerSelected
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff04060f),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                spreadRadius: 3.0,
                              ),
                            ],
                          )
                        // BoxDecoration(
                        //     borderRadius: BorderRadius.circular(20),
                        //     border: Border.all(
                        //       // style: BorderStyle.solid,
                        //       color: Color(0xffE4DDEA),
                        //       width: 3,
                        //     ),
                        //     color: Color(0xff060713),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Color(0xffE4DDEA),
                        //         blurRadius: 19.0,
                        //         offset: Offset(0, 0),
                        //       ),
                        //       BoxShadow(
                        //         color: Color(0xADE4DDEA),
                        //         blurRadius: 14.0,
                        //         offset: Offset(0, 1),
                        //       ),
                        //       BoxShadow(
                        //         color: Color(0xff000000),
                        //         blurRadius: 4.0,
                        //         offset: Offset(-6, -4),
                        //       ),
                        //       BoxShadow(
                        //         color: Color(0xff000000),
                        //         blurRadius: 10.0,
                        //         offset: Offset(-6, -4),
                        //       ),
                        //     ],
                        //   )
                        : (BoxDecoration(
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Row(
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
                                decoration: isFirstleft
                                    ? (BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff04060f),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5.0,
                                            spreadRadius: 3.0,
                                          ),
                                        ],
                                      ))
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff060714),
                                        boxShadow: [
                                          BoxShadow(
                                            // color: Color.fromRGBO(228, 221, 234, 0.25),
                                            color: Color(0x40E4DDEA),
                                            blurRadius: 8.0,
                                            offset: Offset(4, 4),
                                          ),
                                          BoxShadow(
                                            color: Color(0xff000215),
                                            blurRadius: 24.0,
                                            offset: Offset(-4, -4),
                                          ),
                                          BoxShadow(
                                            color: Color(0xff000000),
                                            blurRadius: 4.0,
                                            offset: Offset(0, -4),
                                          ),
                                        ],
                                      ),
                                child: TextField(
                                  onTap: () {
                                    setState(() {
                                      isFirstContainerSelected = true;
                                      isFirstleft = true;
                                      isFirstright = false;
                                      isSecond1left = false;
                                      isSecond1right = false;
                                      isSecond2left = false;
                                      isSecond2right = false;
                                    });
                                  },
                                  controller: nameC,
                                  focusNode: nameFocusNode,
                                  onChanged: (newText) {
                                    // This callback will be called whenever the text in the TextField changes
                                    // You can update your state here based on the new text value
                                    // For example, you can update a variable or call setState to re-render the UI
                                    setState(() {
                                      // Update your state based on newText if needed
                                      nameC = this.nameC;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'ex. 김한동',
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9A9A9A)),
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
                                decoration: isFirstright
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff04060f),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5.0,
                                            spreadRadius: 3.0,
                                          ),
                                        ],
                                      )
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff060714),
                                        boxShadow: [
                                          BoxShadow(
                                            // color: Color.fromRGBO(228, 221, 234, 0.25),
                                            color: Color(0x40E4DDEA),
                                            blurRadius: 8.0,
                                            offset: Offset(4, 4),
                                          ),
                                          BoxShadow(
                                            color: Color(0xff000215),
                                            blurRadius: 24.0,
                                            offset: Offset(-4, -4),
                                          ),
                                          BoxShadow(
                                            color: Color(0xff000000),
                                            blurRadius: 4.0,
                                            offset: Offset(0, -4),
                                          ),
                                        ],
                                      ),
                                child: TextField(
                                  onTap: () {
                                    setState(() {
                                      isFirstContainerSelected = true;
                                      isFirstleft = false;
                                      isFirstright = true;
                                      isSecond1left = false;
                                      isSecond1right = false;
                                      isSecond2left = false;
                                      isSecond2right = false;
                                    });
                                  },
                                  controller: ageC,
                                  keyboardType: TextInputType.number,
                                  onChanged: (newText) {
                                    // This callback will be called whenever the text in the TextField changes
                                    // You can update your state here based on the new text value
                                    // For example, you can update a variable or call setState to re-render the UI
                                    setState(() {
                                      // Update your state based on newText if needed
                                      ageC = this.ageC;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'ex. 24',
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9A9A9A)),
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
                    decoration: isFirstContainerSelected
                        ? BoxDecoration(
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
                          )
                        : BoxDecoration(
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
                              decoration: isSecond1left
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff04060f),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 3.0,
                                        ),
                                      ],
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff060714),
                                      boxShadow: [
                                        BoxShadow(
                                          // color: Color.fromRGBO(228, 221, 234, 0.25),
                                          color: Color(0x40E4DDEA),
                                          blurRadius: 8.0,
                                          offset: Offset(4, 4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000215),
                                          blurRadius: 24.0,
                                          offset: Offset(-4, -4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000000),
                                          blurRadius: 4.0,
                                          offset: Offset(0, -4),
                                        ),
                                      ],
                                    ),

                              // child:
                              child: TextField(
                                onTap: () {
                                  setState(() {
                                    isFirstContainerSelected = false;
                                    isFirstleft = false;
                                    isFirstright = false;
                                    isSecond1left = true;
                                    isSecond1right = false;
                                    isSecond2left = false;
                                    isSecond2right = false;
                                  });
                                },
                                onChanged: (newText) {
                                  // This callback will be called whenever the text in the TextField changes
                                  // You can update your state here based on the new text value
                                  // For example, you can update a variable or call setState to re-render the UI
                                  setState(() {
                                    // Update your state based on newText if needed
                                    sleepH = this.sleepH;
                                  });
                                },
                                controller: sleepH,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: '        23',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9A9A9A)),
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
                              decoration: isSecond1right
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff04060f),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 3.0,
                                        ),
                                      ],
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff060714),
                                      boxShadow: [
                                        BoxShadow(
                                          // color: Color.fromRGBO(228, 221, 234, 0.25),
                                          color: Color(0x40E4DDEA),
                                          blurRadius: 8.0,
                                          offset: Offset(4, 4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000215),
                                          blurRadius: 24.0,
                                          offset: Offset(-4, -4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000000),
                                          blurRadius: 4.0,
                                          offset: Offset(0, -4),
                                        ),
                                      ],
                                    ),
                              child: TextField(
                                onTap: () {
                                  setState(() {
                                    isFirstContainerSelected = false;
                                    isFirstleft = false;
                                    isFirstright = false;
                                    isSecond1left = false;
                                    isSecond1right = true;
                                    isSecond2left = false;
                                    isSecond2right = false;
                                  });
                                },
                                controller: sleepM,
                                keyboardType: TextInputType.number,
                                onChanged: (newText) {
                                  // This callback will be called whenever the text in the TextField changes
                                  // You can update your state here based on the new text value
                                  // For example, you can update a variable or call setState to re-render the UI
                                  setState(() {
                                    // Update your state based on newText if needed
                                    sleepM = this.sleepM;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: '        00',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9A9A9A)),
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
                              decoration: isSecond2left
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff04060f),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 3.0,
                                        ),
                                      ],
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff060714),
                                      boxShadow: [
                                        BoxShadow(
                                          // color: Color.fromRGBO(228, 221, 234, 0.25),
                                          color: Color(0x40E4DDEA),
                                          blurRadius: 8.0,
                                          offset: Offset(4, 4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000215),
                                          blurRadius: 24.0,
                                          offset: Offset(-4, -4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000000),
                                          blurRadius: 4.0,
                                          offset: Offset(0, -4),
                                        ),
                                      ],
                                    ),
                              child: TextField(
                                onTap: () {
                                  setState(() {
                                    isFirstContainerSelected = false;
                                    isFirstleft = false;
                                    isFirstright = false;
                                    isSecond1left = false;
                                    isSecond1right = false;
                                    isSecond2left = true;
                                    isSecond2right = false;
                                  });
                                },
                                controller: wakeH,
                                keyboardType: TextInputType.number,
                                onChanged: (newText) {
                                  // This callback will be called whenever the text in the TextField changes
                                  // You can update your state here based on the new text value
                                  // For example, you can update a variable or call setState to re-render the UI
                                  setState(() {
                                    // Update your state based on newText if needed
                                    wakeH = this.wakeH;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: '         7',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9A9A9A)),
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
                              decoration: isSecond2right
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff04060f),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 3.0,
                                        ),
                                      ],
                                    )
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff060714),
                                      boxShadow: [
                                        BoxShadow(
                                          // color: Color.fromRGBO(228, 221, 234, 0.25),
                                          color: Color(0x40E4DDEA),
                                          blurRadius: 8.0,
                                          offset: Offset(4, 4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000215),
                                          blurRadius: 24.0,
                                          offset: Offset(-4, -4),
                                        ),
                                        BoxShadow(
                                          color: Color(0xff000000),
                                          blurRadius: 4.0,
                                          offset: Offset(0, -4),
                                        ),
                                      ],
                                    ),
                              child: TextField(
                                onTap: () {
                                  setState(() {
                                    isFirstContainerSelected = false;
                                    isFirstleft = false;
                                    isFirstright = false;
                                    isSecond1left = false;
                                    isSecond1right = false;
                                    isSecond2left = false;
                                    isSecond2right = true;
                                  });
                                  print(isFirstContainerSelected);
                                },
                                controller: wakeM,
                                keyboardType: TextInputType.number,
                                onChanged: (newText) {
                                  // This callback will be called whenever the text in the TextField changes
                                  // You can update your state here based on the new text value
                                  // For example, you can update a variable or call setState to re-render the UI
                                  setState(() {
                                    // Update your state based on newText if needed
                                    wakeM = this.wakeM;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: '        30',
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9A9A9A)),
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
                  if (nameC.text.trim().isEmpty ||
                      ageC.text.trim().isEmpty ||
                      sleepH.text.trim().isEmpty ||
                      sleepM.text.trim().isEmpty ||
                      wakeH.text.trim().isEmpty ||
                      wakeM.text.trim().isEmpty)SizedBox(height: 38,)
                  
                  else Text(
                      "입력한 시간에 자동으로 전화와 모닝콜이 수신됩니다.\n          환경설정에서 나중에 변경 가능합니다.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(
                    height: 100,
                  ),
                  //맨 밑
                  if (nameC.text.trim().isEmpty ||
                      ageC.text.trim().isEmpty ||
                      sleepH.text.trim().isEmpty ||
                      sleepM.text.trim().isEmpty ||
                      wakeH.text.trim().isEmpty ||
                      wakeM.text.trim().isEmpty)
                    Container(
                      width: 310,
                      height: 75,
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
                        child: Text("다음",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(154, 154, 154, 1))),
                      ),
                    )
                  else
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
