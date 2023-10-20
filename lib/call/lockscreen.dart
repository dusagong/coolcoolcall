import 'package:coolcoolcall/call/call.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/Call/lockScreen.png'), // 배경 이미지
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 220,
            ),
            isClick? Stack(
              children: [
                Container(
                  width: 369,
                  height: 223,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xf29e9e9e)),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                            "미리 알림의 긴급한 알림을 계속 켠 상태로 유지하겠습니까?\n 켠 상태로 유지하면 미리 알림의 중요한 알림이 즉시 전달됩니다. ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isClick =false;
                                });
                              },
                              child: Container(
                                width: 167,
                                height: 39,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff8E8D8A),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("10분뒤 다시 걸기",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff272727)
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4,),
                            GestureDetector(
                              onTap: (){
                                Get.offAll(()=> Call());
                              },
                              child: Container(
                                width: 167,
                                height: 39,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff8E8D8A),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("지금 다시 걸기",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff272727)
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 369,
                  height: 98,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                      color: Color(0x99c7c7c7)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 13,
                          ),
                          Image.asset(
                            "assets/Call/coolIcon.png",
                            width: 39,
                            height: 39,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 4,
                              ),
                              Text("긴급",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff676767))),
                              Text("쿨쿨콜",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  )),
                              Text("다시 걸기 : 쿨쿨이",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ):Column(
              children: [
                SizedBox(height: 434,),
                GestureDetector(
                  onTap: (){
                    Get.offAll(()=>Call());
                  },
                  child: Container(
                        width: 369,
                        height: 81,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x99c7c7c7)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 13,
                                ),
                                Image.asset(
                                  "assets/Call/coolIcon.png",
                                  width: 39,
                                  height: 39,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("긴급",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff676767))),
                                    Text("쿨쿨콜",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    Text("다시 걸기 : 쿨쿨이",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                ),
              ],
            ),

          ]),
        ),
      ),
    );
  }
}
