import 'dart:async';

import 'package:coolcoolcall/screen/call/incomming.dart';
import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/call/call.dart';
import 'package:coolcoolcall/screen/onBoarding/page3.dart';
import 'package:coolcoolcall/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String?> fetchNameFromFirestore() async {
  try {
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await FirebaseFirestore.instance.collection('기본 가입 정보').doc('a').get();

    // Check if the document exists and contains the "name" field
    if (documentSnapshot.exists) {
      final Map<String, dynamic>? data = documentSnapshot.data();

      // Retrieve the "name" field value
      final String? name = data?['name'];

      return name;
    } else {
      // Handle the case where the document doesn't exist
      print("Document does not exist.");
      return null;
    }
  } catch (e) {
    // Handle any errors that occur during the fetch process.
    print("Error fetching data: $e");
    return null;
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int clickCount = AuthController.instance.clickcount;

  final ImageProvider image1 = AssetImage("assets/home/cover1_.png");
  final ImageProvider image2 = AssetImage("assets/home/cover2_.png");
  final ImageProvider image3 = AssetImage("assets/home/cover3_.png");

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Preload the images
    precacheImage(image1, context);
    precacheImage(image2, context);
    precacheImage(image3, context);
  }

  bool checkBottomConsonant(String input) {
    bool result = false;
    if (isKorean(input)) {
      result = ((input.runes.first - 0xAC00) / (28 * 21)) < 0
          ? false
          : (((input.runes.first - 0xAC00) % 28 != 0) ? true : false);
    }
    return result;
  }

  void _handleDoubleTap() {
    // Create a timer with a 2-second delay
    Timer(Duration(seconds: 2), () {
      Get.offAll(() => Income());
    });
  }

  bool isKorean(String input) {
    bool isKorean = false;
    int inputToUniCode = input.codeUnits[0];

    isKorean = (inputToUniCode >= 12593 && inputToUniCode <= 12643)
        ? true
        : (inputToUniCode >= 44032 && inputToUniCode <= 55203)
            ? true
            : false;

    return isKorean;
  }

  @override
  Widget build(BuildContext context) {
    // if (AuthController.instance.clickcount == 3) AuthController.instance.clickcount = clickCount;
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background/background.png'), // 배경 이미지
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GestureDetector(
            onTap: () {
              setState(() {
                // AuthController.instance.clickcount++;
                AuthController.instance.clickcount++;
              });
            },
            child: Stack(
              children: [
                // Background Image or Content
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.offAll(() => Setting(),
                                  transition: Transition.fadeIn,
                                  duration: Duration(
                                    milliseconds: 700,
                                  ));
                            },
                            child: Image.asset("assets/home/setting.png"),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Container(
                        height: 104,
                        child: GestureDetector(
                          onDoubleTap: () {
                            _handleDoubleTap();
                            print('hi');
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      FutureBuilder<String?>(
                        future: fetchNameFromFirestore(),
                        builder: (context, snapshot) {
                          // if (snapshot.connectionState ==
                          //     ConnectionState.waiting) {
                          //   return CircularProgressIndicator();
                          // } else
                          if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else {
                            final String? name = snapshot.data;

                            if (name != null) {
                              final String trimmedName = name.substring(1);
                              final String lastletter =
                                  name.substring(name.length - 1);
                              return checkBottomConsonant(lastletter)
                                  ? Text(
                                      "      $trimmedName아!\n오늘도 고생했어,\n 같이 자러 갈래?",
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: 35,
                                        fontFamily: 'home',
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(229, 221, 234, 1),
                                      ),
                                    )
                                  : Text(
                                      "      $trimmedName야!\n오늘도 고생했어,\n 같이 자러 갈래?",
                                      style: TextStyle(
                                        fontSize: 35,
                                        height: 1.5,
                                        fontFamily: 'home',
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(229, 221, 234, 1),
                                      ),
                                    );
                            } else {
                              return Text("Document does not exist.");
                            }
                          }
                        },
                      ),
                      SizedBox(height: 197),
                      GestureDetector(
                        onTap: () {
                          // Get.offAll(() => SpeechSampleApp());
                          Get.offAll(() => Call(),
                              transition: Transition.fadeIn,
                              duration: Duration(
                                milliseconds: 700,
                              ));
                        },
                        child: Image.asset("assets/home/moon.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "전화하기",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(229, 221, 234, 1),
                        ),
                      ),
                    ],
                  ),
                ),
//AuthController.instance.clickcount == 0
                // Content to Show in the Container
                if (AuthController.instance.clickcount == 0)
                  Center(
                      child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(image: image1, fit: BoxFit.cover),

                    // Image.asset(
                    //   "assets/home/cover1_.png",
                    //   fit: BoxFit.cover,
                    // ),
                  )),
                if (AuthController.instance.clickcount == 1)
                  Center(
                      child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(image: image2, fit: BoxFit.cover),
                    // Image.asset(
                    //   "assets/home/cover2_.png",
                    //   fit: BoxFit.cover,
                    // ),
                  )),
                if (AuthController.instance.clickcount == 2)
                  Center(
                      child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(image: image3, fit: BoxFit.cover),
                    // Image.asset(
                    //   "assets/home/cover3_.png",
                    //   fit: BoxFit.cover,
                    // ),
                  )),
              ],
            ),
          ),
        ));
  }
}
