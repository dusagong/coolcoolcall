import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> with TickerProviderStateMixin {
  List<String> assets1 = [
    '불면증을 겪고 있지 않지만 앱을 사용하고 싶을 땐 어떤 불면 타입을 선택해야 하나요?',
    '기상 시간에는 알람 전화를 받고 싶지 않은데 어떻게 취소할 수 있나요?',
    '새벽에 깼는데 앱이 종료되지 않고 계속 전화 중이더라고요, 왜 그런건가요?',
  ];
  List<String> assets2 = [
    "불면증을 겪지 않지만 쿨쿨콜을 사용하고 싶으실 땐, ‘잠에 들기가 힘들어요' 타입을 선택해주시면 됩니다! 그러면 사용자님이 잠드는 순간 쿨쿨이도함께 잠에 들게 될 거에요.",
    "[마이페이지 - 전화 방식 변경에 들어가서셔 ‘기상 전화 알람' 상태를 수정해주시면 됩니다!",
    "사용자님이 ‘수면 유지에 어려움'을 겪고 계셔서 잠에 들어도 쿨쿨이가 계속 곁을 지키고 있는 거예요!  중간에 깨도 언제나 옆을 지키는 쿨쿨이와 외롭지 않게 밤을 보내 보세요 :)",
  ];
  List<String> assets = [
    "assets/Setting/4/qa/SJsend/1_4_1.png",
    "assets/Setting/4/qa/SJsend/2_4_1.png",
    "assets/Setting/4/qa/SJsend/3_4_1.png",
  ];
  List<String> assetsTT = [
    "assets/Setting/4/qa/SJsend/1_4.png",
    "assets/Setting/4/qa/SJsend/2_4.png",
    "assets/Setting/4/qa/SJsend/3_4.png",
  ];

  final color = [
    Colors.red,
    Colors.amber,
    // Colors.teal,
    // Colors.blueGrey,
    // Colors.blue,
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff060713),
      appBar: AppBar(
        toolbarHeight: screenHeight * 47 / 844,
        title: const Text(
          "자주 묻는 질문",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xff060713),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                height: 580,
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                child: PageView.builder(
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.952),
                  onPageChanged: (value) {
                    setState(() {
                      // Smoothly update the container size
                      currentindex = value % assets.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    // Calculate size based on the current index
                    double containerWidth1 =
                        currentindex == index % assets.length ? 455 * 1.0 : 240;
                    double containerHeight1 =
                        currentindex == index % assets.length ? 480 * 1.1 : 380;
                    bool opa =
                        currentindex == index % assets.length ? true : false;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            // curve: Curves.easeInOut,
                            width: containerWidth1,
                            height: containerHeight1,
                            child: opa
                                ? Image.asset(
                                    assets[index % assets.length],
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(assets[index % assets.length],
                                    fit: BoxFit.cover,
                                    opacity: AnimationController(
                                        vsync: this, value: 0.5))),
                      ],
                    );
                  },
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 550,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentindex == 0
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                      currentindex == 0
                          ? Image.asset(
                              "assets/Setting/4/qa/1.png",
                              width: 30,
                              height: 30,
                            )
                          : Image.asset(
                              "assets/Setting/4/qa/1-2.png",
                              width: 20,
                              height: 20,
                            ),
                      currentindex == 0
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                      currentindex == 1
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                      currentindex == 1
                          ? Image.asset(
                              "assets/Setting/4/qa/2.png",
                              width: 30,
                              height: 30,
                            )
                          : Image.asset(
                              "assets/Setting/4/qa/2-2.png",
                              width: 20,
                              height: 20,
                            ),
                      currentindex == 1
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                      currentindex == 2
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                      currentindex == 2
                          ? Image.asset(
                              "assets/Setting/4/qa/3.png",
                              width: 30,
                              height: 30,
                            )
                          : Image.asset(
                              "assets/Setting/4/qa/3-2.png",
                              width: 20,
                              height: 20,
                            ),
                      currentindex == 2
                          ? SizedBox(
                              width: 0,
                            )
                          : SizedBox(
                              width: 5,
                            ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
