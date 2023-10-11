import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> with TickerProviderStateMixin {
  List<String> assets1 = [
    'assets/img1.png',
    'assets/img2.png',
    'assets/img3.png',
    'assets/img4.png',
    'assets/img5.png'
  ];
  List<String> assets2 = [
    'assets/img1.png',
    'assets/img2.png',
    'assets/img3.png',
    'assets/img4.png',
    'assets/img5.png'
  ];
  List<Widget> assets = [
    Column(
      children: [
        Container(
          width: 304,
          height: 96,
          decoration: const BoxDecoration(
            color: Color(0xffE5DDEA),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
        ),
        Container(
          width: 304,
          height: 386,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 58, 66, 153),
            boxShadow: [
              BoxShadow(
                color: Color(0x36000000),
                blurRadius: 4.0,
                offset: Offset(0, 4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffE5DDEA))),
        )
      ],
    ),
    Column(
      children: [
        Container(
          width: 304,
          height: 96,
          decoration: const BoxDecoration(
            color: Color(0xffE5DDEA),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
        ),
        Container(
          width: 304,
          height: 386,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 58, 66, 153),
            boxShadow: [
              BoxShadow(
                color: Color(0x36000000),
                blurRadius: 4.0,
                offset: Offset(0, 4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffE5DDEA))),
        )
      ],
    ),
    Column(
      children: [
        Container(
          width: 304,
          height: 96,
          decoration: const BoxDecoration(
            color: Color(0xffE5DDEA),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
        ),
        Container(
          width: 304,
          height: 386,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 58, 66, 153),
            boxShadow: [
              BoxShadow(
                color: Color(0x36000000),
                blurRadius: 4.0,
                offset: Offset(0, 4),
              ),
              BoxShadow(
                color: Color(0xff000215),
                blurRadius: 24.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x36E4DDEA),
                blurRadius: 8.0,
                offset: Offset(-4, -4),
              ),
            ],
          ),
          child: const Text("불면증을 겪고 있지 않지만\n앱을 사용하고 싶을 땐\n어떤 불면 타입을 선택해야 하나요?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffE5DDEA))),
        )
      ],
    ),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.73),
                  onPageChanged: (value) {
                    setState(() {
                      // Smoothly update the container size
                      currentindex = value % assets.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    // Calculate size based on the current index
                    double containerWidth1 =
                        currentindex == index % assets.length ? 304 : 250;
                    double containerHeight1 =
                        currentindex == index % assets.length ? 96 : 80;

                    double containerWidth2 =
                        currentindex == index % assets.length ? 304 : 250;
                    double containerHeight2 =
                        currentindex == index % assets.length ? 386 : 300;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          width: containerWidth1,
                          height: containerHeight1,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: Color(0xffE5DDEA),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x36E4DDEA),
                                  blurRadius: 8.0,
                                  offset: Offset(-4, -4),
                                ),
                                BoxShadow(
                                  color: Color(0xff000215),
                                  blurRadius: 24.0,
                                  offset: Offset(4, 4),
                                ),
                              ],
                            ),
                            child: Text(assets1[index % assets.length]),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          width: containerWidth2,
                          height: containerHeight2,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 58, 66, 153),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x36000000),
                                  blurRadius: 4.0,
                                  offset: Offset(0, 4),
                                ),
                                BoxShadow(
                                  color: Color(0xff000215),
                                  blurRadius: 24.0,
                                  offset: Offset(4, 4),
                                ),
                                BoxShadow(
                                  color: Color(0x36E4DDEA),
                                  blurRadius: 8.0,
                                  offset: Offset(-4, -4),
                                ),
                              ],
                            ),
                            child: Text(assets2[index % assets.length]),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  currentindex == 0
                      ? Image.asset("assets/Setting/4/qa/BrightFullMoon.png")
                      : Image.asset("assets/Setting/4/qa/DarkFullMoon.png"),
                  currentindex == 1
                      ? Image.asset("assets/Setting/4/qa/BrightHalfMoon.png")
                      : Image.asset("assets/Setting/4/qa/DarkHalfMoon.png"),
                  currentindex == 2
                      ? Image.asset("assets/Setting/4/qa/BrightSmallMoon.png")
                      : Image.asset("assets/Setting/4/qa/DarkSmallMoon.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
