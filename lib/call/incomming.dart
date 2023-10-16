import 'package:flutter/material.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClick = false;
        });
        print('$isClick');
      },
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/Call/IncomeBack.png'), // 배경 이미지
            ),
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text("쿨쿨이",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff))),
                  Text("쿨쿨콜 음성 통화...",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff))),
                  SizedBox(
                    height: 230,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = true;
                          });
                          print('$isClick');
                        },
                        child: Image.asset(
                          "assets/Call/seeulater.png",
                          width: 78,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Image.asset(
                        "assets/Call/message.png",
                        width: 45,
                        height: 50,
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )),
    );
  }
}
