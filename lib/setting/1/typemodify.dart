//연필없에고 바로 수정 가능하게
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class typeModify extends StatefulWidget {
  typeModify({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<typeModify> {
  bool click = true;
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
  bool initalF = false;
  bool initalS = false;
  bool initalT = false;
  void onSaveButtonPressed() {
    storeDataInFirestore(first, second, third);
    Get.back();
  }

  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection('불면 상태 입력')
        .doc('a')
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

        // Retrieve the boolean fields
        bool first_g = data['first'] ?? false;
        bool second_g = data['second'] ?? false;
        bool third_g = data['third'] ?? false;

        // Now you have the boolean values
        // You can use these values as needed in your code

        // For example, you can update the state of UI elements like switches or checkboxes

        // Call setState to trigger a rebuild with the initial values
        setState(() {
          first = first_g;
          second = second_g;
          third = third_g;
          initalF = first_g;
          initalS = second_g;
          initalT = third_g;
        });
      }
    }).catchError((error) {
      print('Error retrieving data: $error');
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
        title: Text("불면 타입 변경",
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
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("현재 불면 상태",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    
                  ],
                ),
              ),
              SizedBox(
                height: height * 60 / 844,
                // height: height * 105 / 844,
              ),
              GestureDetector(
                onTap: () {
                  click
                      ? setState(() {
                          first = !first;
                        })
                      : setState(() {});
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: first
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                            ),
                          ],
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
              ),
              SizedBox(
                height: height * 22 / 844,
              ),
              GestureDetector(
                onTap: () {
                  click
                      ? setState(() {
                          second = !second;
                        })
                      : setState(() {});
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: second
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                            ),
                          ],
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                        width: 46,
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
                  click
                      ? setState(() {
                          third = !third;
                        })
                      : setState(() {});
                },
                child: Container(
                  width: conwidth,
                  height: conhight,
                  decoration: third
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff060713),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                            ),
                          ],
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                  padding: EdgeInsets.fromLTRB(
                      width * 37 / 390.0, 0, width * 31 / 390.0, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/onboarding/bimong4.png",
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
              ),
              SizedBox(
                height: height * 68 / 844,
              ),
              if (first == initalF && second == initalS && third == initalT)
                Container(
                    width: conwidth,
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
                      child: Text("수정완료",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ))
              // else if (click == false)
              //   if (first == false && second == false && third == false)
              //     Container(
              //         width: conwidth,
              //         height: height * 75 / 844,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //           color: Color(0xff060713),
              //           boxShadow: [
              //             BoxShadow(
              //               // color: Color.fromRGBO(228, 221, 234, 0.25),
              //               color: Color(0x40E4DDEA),
              //               blurRadius: 8.0,
              //               offset: Offset(-4, -4),
              //             ),
              //             BoxShadow(
              //               color: Color(0xff000215),
              //               blurRadius: 24.0,
              //               offset: Offset(4, 4),
              //             ),
              //             BoxShadow(
              //               color: Color(0xff000000),
              //               blurRadius: 4.0,
              //               offset: Offset(0, 4),
              //             ),
              //           ],
              //         ),
              //         child: Center(
              //           child: Text("수정완료",
              //               style: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.white)),
              //         ))
                else
                  GestureDetector(
                    onTap: () {
                      onSaveButtonPressed();
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
                          child: Text("수정완료",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        )),
                  )
              // else
              //   Container(
              //       width: conwidth,
              //       height: height * 75 / 844,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(100),
              //         color: Color(0xff060713),
              //         boxShadow: [
              //           BoxShadow(
              //             // color: Color.fromRGBO(228, 221, 234, 0.25),
              //             color: Color(0x40E4DDEA),
              //             blurRadius: 8.0,
              //             offset: Offset(-4, -4),
              //           ),
              //           BoxShadow(
              //             color: Color(0xff000215),
              //             blurRadius: 24.0,
              //             offset: Offset(4, 4),
              //           ),
              //           BoxShadow(
              //             color: Color(0xff000000),
              //             blurRadius: 4.0,
              //             offset: Offset(0, 4),
              //           ),
              //         ],
              //       ),
              //       child: Center(
              //         child: Text("수정완료",
              //             style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.w600,
              //                 color: Colors.white)),
              //       ))
            ],
          ),
        ),
      ),
    );
  }
}
