import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coolcoolcall/screen/onBoarding/page2.dart';

class Set1 extends StatefulWidget {
  Set1({super.key});

  @override
  _Set1State createState() => _Set1State();
}

class _Set1State extends State<Set1> {
  bool isFirstContainerSelected = false;
  bool isSecondContainerSelected = false;
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

  // Future<Map<String, dynamic>> getDataFromFirestore() async {
  //   try {
  //     DocumentSnapshot snapshot = await FirebaseFirestore.instance
  //         .collection('기본 가입 정보')
  //         .doc('a')
  //         .get();

  //     if (snapshot.exists) {
  //       return snapshot.data() as Map<String, dynamic>;
  //     } else {
  //       return {}; // Return an empty map if the document doesn't exist
  //     }
  //   } catch (e) {
  //     print('Error retrieving data: $e');
  //     return {}; // Return an empty map in case of an error
  //   }
  // }

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
        'age': enteredAge,
        'sleepHour': enteredSH,
        'sleepMinute': enteredSM,
        'wakeHour': enteredWH,
        'wakeMinute': enteredWM,
      });
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  void initState() {
    super.initState();

    // Retrieve data from Firestore and set the initial value for nameC
    FirebaseFirestore.instance
        .collection('기본 가입 정보')
        .doc('a')
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
        String name = data['name'] ?? '';
        String age = data['age'] ?? '';
        String sleepHours = data['sleepHour'] ?? '';
        String sleepMinutes = data['sleepMinute'] ?? '';
        String wakeHours = data['wakeHour'] ?? '';
        String wakeMinutes = data['wakeMinute'] ?? '';
        // Set the initial value for the controller's text property
        nameC.text = name;
        ageC.text = age;
        sleepH.text = sleepHours;
        sleepM.text = sleepMinutes;
        wakeH.text = wakeHours;
        wakeM.text = wakeMinutes;

        // Call setState to trigger a rebuild with the initial value
        setState(() {});
      }
    }).catchError((error) {
      print('Error retrieving data: $error');
    });
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("기본 정보",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      isFirstContainerSelected
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFirstContainerSelected = false;
                                  isFirstleft = false;
                                  isFirstright = false;
                                  onSaveButtonPressed();
                                });
                              },
                              child: Image.asset(
                                "assets/Setting/1/check.png",
                                width: 20.5,
                                height: 20.5,
                              ),
                            )
                          : isSecondContainerSelected
                              ? Image.asset(
                                  "assets/Setting/1/pencil.png",
                                  width: 20.5,
                                  height: 20.5,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFirstContainerSelected = true;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/Setting/1/pencil.png",
                                    width: 20.5,
                                    height: 20.5,
                                  ),
                                ),
                    ],
                  ),
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
                      : (BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
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
                                    isFirstContainerSelected
                                        ? isFirstleft = true
                                        : isFirstleft = false;
                                    isFirstright = false;
                                  });
                                },
                                readOnly: !isFirstContainerSelected,
                                textAlign: TextAlign.center,
                                controller: nameC,
                                focusNode: nameFocusNode,
                                onChanged: (newText) {
                                  setState(() {
                                    nameC = this.nameC;
                                  });
                                },
                                decoration: InputDecoration(
                                  // hintText: 'ex. 김한동',
                                  // hintStyle: TextStyle(
                                  //     fontSize: 18,
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Color(0xff9A9A9A)),
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
                                    isFirstContainerSelected
                                        ? isFirstright = true
                                        : isFirstright = false;
                                    isFirstleft = false;
                                  });
                                },
                                readOnly: !isFirstContainerSelected,
                                textAlign: TextAlign.center,
                                controller: ageC,
                                keyboardType: TextInputType.number,
                                onChanged: (newText) {
                                  setState(() {
                                    ageC = this.ageC;
                                  });
                                },
                                decoration: InputDecoration(
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
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    isSecondContainerSelected
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                isSecondContainerSelected = false;
                                isSecond1left = false;
                                isSecond2left = false;
                                isSecond1right = false;
                                isSecond2right = false;
                                onSaveButtonPressed();
                              });
                            },
                            child: Image.asset(
                              "assets/Setting/1/check.png",
                              width: 20.5,
                              height: 20.5,
                            ),
                          )
                        : isFirstContainerSelected
                            ? Image.asset(
                                "assets/Setting/1/pencil.png",
                                width: 20.5,
                                height: 20.5,
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSecondContainerSelected = true;
                                  });
                                },
                                child: Image.asset(
                                  "assets/Setting/1/pencil.png",
                                  width: 20.5,
                                  height: 20.5,
                                ),
                              ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 358,
                  height: 221,
                  decoration: !isSecondContainerSelected
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
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
                                  isSecondContainerSelected
                                      ? isSecond1left = true
                                      : isFirstleft = false;
                                  isSecond1right = false;
                                  isSecond2left = false;
                                  isSecond2right = false;
                                });
                              },
                              onChanged: (newText) {
                                setState(() {
                                  sleepH = this.sleepH;
                                });
                              },
                              readOnly: !isSecondContainerSelected,
                              textAlign: TextAlign.center,
                              controller: sleepH,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
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
                                  isSecondContainerSelected
                                      ? isSecond1right = true
                                      : isSecond1right = false;
                                  isSecond1left = false;
                                  isSecond2left = false;
                                  isSecond2right = false;
                                });
                              },
                              readOnly: !isSecondContainerSelected,
                              textAlign: TextAlign.center,
                              controller: sleepM,
                              keyboardType: TextInputType.number,
                              onChanged: (newText) {
                                setState(() {
                                  sleepM = this.sleepM;
                                });
                              },
                              decoration: InputDecoration(
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
                                  isSecondContainerSelected
                                      ? isSecond2left = true
                                      : isSecond2left = false;
                                  isSecond1left = false;
                                  isSecond1right = false;
                                  isSecond2right = false;
                                });
                              },
                              readOnly: !isSecondContainerSelected,
                              textAlign: TextAlign.center,
                              controller: wakeH,
                              keyboardType: TextInputType.number,
                              onChanged: (newText) {
                                setState(() {
                                  wakeH = this.wakeH;
                                });
                              },
                              decoration: InputDecoration(
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
                                  isSecondContainerSelected
                                      ? isSecond2right = true
                                      : isSecond2right = false;
                                  isSecond1left = false;
                                  isSecond1right = false;
                                  isSecond2left = false;
                                });
                                print(isFirstContainerSelected);
                              },
                              readOnly: !isSecondContainerSelected,
                              textAlign: TextAlign.center,
                              controller: wakeM,
                              keyboardType: TextInputType.number,
                              onChanged: (newText) {
                                setState(() {
                                  wakeM = this.wakeM;
                                });
                              },
                              decoration: InputDecoration(
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
              ],
            )),
          ),
        ));
  }
}
