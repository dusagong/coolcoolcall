import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:coolcoolcall/setting/1/set1.dart';
import 'package:coolcoolcall/setting/2/set2.dart';
import 'package:coolcoolcall/setting/4/set4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  Stream<String?> fetchNameFromFirestore() {
    return FirebaseFirestore.instance
        .collection('기본 가입 정보')
        .doc('a')
        .snapshots()
        .map((snapshot) {
      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
        String name = data['name'] ?? '';
        return name;
      } else {
        return null;
      }
    });
  }

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
  bool isTapped5 = false;

  void updateShadow5(bool isTapped5) {
    setState(() {
      this.isTapped5 = isTapped5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff060713),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 53,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      StreamBuilder<String?>(
                        stream: fetchNameFromFirestore(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else {
                            final String? name = snapshot.data;

                            return Text(
                              "$name님",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            );
                          }
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => Home());
                    },
                    child: Image.asset("assets/Setting/Home.png"),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
                  updateShadow1(false); // Set the initial shadow when released
                  Get.to(() => Set1());
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
                        "assets/Setting/1.png",
                        width: 18,
                        height: 20,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("개인 정보 설정",
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
                onTap: () {
                  Get.to(() => Set2());
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
                      Image.asset(
                        "assets/Setting/2.png",
                        width: 18,
                        height: 32,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("서비스 설정",
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
                onTap: () {
                  Get.offAll(() => Home());
                  AuthController.instance.clickcount = 0;
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
                      Image.asset(
                        "assets/Setting/3.png",
                        width: 18,
                        height: 22.5,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("사용 설명서",
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
                onTap: () {
                  Get.to(() => Set4());
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: isTapped4?touched:initial,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/Setting/4.png",
                        width: 18,
                        height: 22.5,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("건의 사항",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 360,
              ),
              GestureDetector(
                onTapDown: (_) {
                  updateShadow5(true); // Set the shadow when touched
                },
                onTapUp: (_) {
                  updateShadow5(false);
                   // Set the initial shadow when released
                },
                onTap: () {
                  Get.offAll(() => FakeLogin());
                  AuthController.instance.clickcount = 0;
                },
                child: Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: isTapped5?touched:initial,
                  child: Center(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/Setting/5.png",
                        width: 18,
                        height: 22.5,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("로그아웃",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)))
                    ],
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
