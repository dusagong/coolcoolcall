import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SleepAlarm extends StatefulWidget {
  SleepAlarm({super.key});

  @override
  _SleepAlarmState createState() => _SleepAlarmState();
}

class _SleepAlarmState extends State<SleepAlarm> {
    bool click = false;
    late Widget mychoice;
  void initState(){
    super.initState();
    mychoice = a();
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
          title: Text("취침 알람 전화 설정",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          backgroundColor: Color(0xff060713),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 200,
            ),
            AnimatedSwitcher(
              switchInCurve: Curves.fastOutSlowIn,
              switchOutCurve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 500),
              // key: ValueKey<Widget>(mychoice),
              child: click ? b() : a(),
            //   transitionBuilder: (Widget child, Animation<double> animation) {
            //   return ScaleTransition(scale: animation, child: child);
            // },
              // mychoice,
              // key: isOverlayVisible ? ValueKey<String>('a') : ValueKey<String>('b'),
            )

          ]),
        ));
  }

  Widget a() {
    return Column(
      key: ValueKey<String>('a'),
      children: [
        Image.asset(
          "assets/Setting/2/BigDarkMoon.png",
          width: 126.79,
          height: 128.15,
        ),
        SizedBox(
          height: 30,
        ),
        Container( // Wrapping the text in a container with fixed height
        height: 60, // Adjust the height as needed
        width: 300,
        child: Text(
          "            현재 쿨쿨콜 알람이 꺼져있어요.\n           취침 전 쿨쿨이의 전화를 싶다면\n                     알람을 켜주세요!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xffE5DDEA),
          ),
        ),
      ),
        GestureDetector(
          onTap: (){
            setState(() {
              click = true;  
            
            });
            print('$click');

          },
          child: Image.asset(
            "assets/Setting/2/DarkToggle.png",
            width: 260,
            height: 144.18,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Text("OFF",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA))),
            Text("ON",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA))),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
  Widget b() {
    return Column(
      key: ValueKey<String>('b'),
      children: [
        Image.asset(
          "assets/Setting/2/BigBrightMoon.png",
          width: 126.79,
          height: 128.15,
        ),
        SizedBox(
          height: 30,
        ),
        
        Container( // Wrapping the text in a container with fixed height
        height: 60, // Adjust the height as needed
        width: 300,
        child: Text(
          "            현재 쿨쿨콜 알람이 켜져있어요.\n    취침 전 쿨쿨이의 전화를 받고싶지 않다면\n                     알람을 꺼주세요!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xffE5DDEA),
          ),
        ),
      ),
        GestureDetector(
          onTap: (){
            setState(() {
              click = false;
            });
            print('$click');
          },
          child: Image.asset(
            "assets/Setting/2/BrightToggle.png",
            width: 260,
            height: 144.18,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Text("OFF",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA))),
            Text("ON",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA))),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
