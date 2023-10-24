import 'package:coolcoolcall/screen/call/call.dart';
import 'package:coolcoolcall/screen/call/lockscreen.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:get/get.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  bool isClick = false;
  final _controller = ActionSliderController();

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
              image: AssetImage('assets/Call/IncomeBackT.png'), // 배경 이미지
            ),
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(children: [
                  SizedBox(
                    height: 90,
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
                    height: 300,
                  ),
                  isClick
                      ? Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.offAll(()=>LockScreen(),transition: Transition.noTransition);
                              },
                              child: Image.asset(
                                "assets/Call/1hour.png",
                                width: 260,
                                height: 79,
                              ),
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 79,
                        ),
                  SizedBox(
                    height: 9,
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
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = !isClick;
                            });
                          },
                          child: isClick
                              ? Image.asset(
                                  "assets/Call/seeulaterdark.png",
                                  width: 78,
                                  height: 50,
                                )
                              : Image.asset(
                                  "assets/Call/seeulater.png",
                                  width: 78,
                                  height: 50,
                                ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Image.asset(
                        "assets/Call/message.png",
                        width: 45,
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 46,),
                  ActionSlider.standard(
                    // sliderBehavior: SliderBehavior.stretch,
                    width: 312.0,
                    height: 77,
                    backgroundColor: Color(0x6ED9D9D9),
                    toggleColor: Color(0xffffffff),
                    icon: Icon(Icons.navigate_next,size: 60,color: Color(0xffE5DDEA),),
                    action: (controller) async {
                      controller.loading(); //starts loading animation
                      // await Future.delayed(const Duration(seconds: 1));
                      Get.offAll(()=>Call(),transition: Transition.noTransition);
                      
                      // controller.success(); //starts success animation
                      // await Future.delayed(const Duration(seconds: 1));
                      // controller.reset(); //resets the slider
                    },
                    child: const Text('    밀어서 통화하기',style: TextStyle(
                                  fontSize: 20.5,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff444444))),
                  ),
                ]),
              ),
            ),
          )),
    );
  }
}
