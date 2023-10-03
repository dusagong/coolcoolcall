import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
                      FutureBuilder<String?>(
                        future: fetchNameFromFirestore(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else {
                            final String? name = snapshot.data;

                            return Text("$name님",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(255, 255, 255, 1)));
                          }
                        },
                      ),
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
              Container(
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
                      "assets/Setting/1.png",
                      width: 18.36393928527832,
                      height: 19.999977111816406,
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
              Container(
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
                      "assets/Setting/1.png",
                      width: 18.36393928527832,
                      height: 19.999977111816406,
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
              Container(
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
                      "assets/Setting/1.png",
                      width: 18.36393928527832,
                      height: 19.999977111816406,
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
              Container(
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
                      "assets/Setting/1.png",
                      width: 18.36393928527832,
                      height: 19.999977111816406,
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
              SizedBox(
                height: 220,
              ),
              Container(
                  width: 354.7760009765625,
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff060713),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
