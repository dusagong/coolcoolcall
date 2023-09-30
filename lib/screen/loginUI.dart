import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/onBoarding/page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FakeLogin extends StatelessWidget {
  const FakeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/background/stars.png'), // 배경 이미지
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset("assets/login/coolcoolLogo.png"),
                SizedBox(
                  height: 80,
                ),
                Text("기존에 사용하고 있던 계정으로\n   간단하게 회원가입 하세요!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/login/kakao.png"),
                    SizedBox(width: 17),
                    Image.asset("assets/login/naver.png"),
                    SizedBox(width: 17),
                    Image.asset("assets/login/facebook.png"),
                    SizedBox(width: 17),
                    Image.asset("assets/login/apple.png"),
                  ],
                ),
                SizedBox(height: 40),
                Text("또는",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                // Image.asset("assets/login/google.png"),
                SizedBox(height: 45),
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => Page1());
                  },
                  child: Container(
                    width: 329,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10), // Adjust the padding as needed
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Image.asset(
                          "assets/login/googlelogo.png",
                          width: 22,
                          height: 20.53333282470703,
                        ),
                        SizedBox(
                            width:
                                60), // Add some spacing between the image and text
                        Text(
                          "구글로 가입하기",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
