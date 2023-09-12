import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FakeLogin extends StatelessWidget {
  const FakeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text('기존에 사용하고 있던 계정으로\n   간단하게 회원가입 하세요!'),
          GestureDetector(
            onTap: () {
              Get.offAll(()=>Home());
            },
            child: Container(
              width: 329,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfffae24c),
              ),
              padding: EdgeInsets.all(10), // Adjust the padding as needed
              child: Row(
                children: [
                  Image.asset(
                    "assets/Vector 65.png",
                    width: 22,
                    height: 20.53333282470703,
                  ),
                  SizedBox(
                      width: 10), // Add some spacing between the image and text
                  Text(
                    "카카오톡으로 가입하기",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      )),
    ));
  }
}
