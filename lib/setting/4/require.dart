import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Require extends StatefulWidget {
  const Require({super.key});

  @override
  State<Require> createState() => _RequireState();
}

class _RequireState extends State<Require> {
  TextEditingController text = TextEditingController();
  bool textClick = false;
  bool textFill = false;
  bool timer = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Scaffold(
        backgroundColor: Color(0xff060713),
        appBar: AppBar(
          toolbarHeight: height * 47 / 844,
          title: Text("건의 사항",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          backgroundColor: Color(0xff060713),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("콜콜쿨을 사용하면서 불편한 점이 있으셨다면\n언제든지 편하게 말씀해주세요!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffE5DDEA),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 358,
                height: 278,
                decoration: textClick
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff04060f),
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
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                child: TextField(
                              onTap: () {
                                textClick = true;
                              },
                              onChanged: (newText) {
                                // This callback will be called whenever the text in the TextField changes
                                // You can update your state here based on the new text value
                                // For example, you can update a variable or call setState to re-render the UI
                                setState(() {
                                  // Update your state based on newText if needed
                                  if (text.text.trim().isEmpty)
                                    textFill = false;
                                  else
                                    textFill = true;
                                });
                              },
                              maxLines:
                                  5, // Set the maximum number of lines for the TextField
                              style: TextStyle(
                                fontSize: 16.0,
                                color: const Color.fromARGB(255, 199, 189, 189),
                              ),
                              decoration: InputDecoration(
                                hintText:
                                    '건의 사항을 입력 해주세요', // Optional hint text
                                hintStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9A9A9A)),
                              ),
                              controller: text,
                            )),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              textFill
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          timer = true;
                        });
                      },
                      child: Container(
                        width: 310,
                        height: 75,
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
                          child: Text("제출하기",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(154, 154, 154, 1))),
                        ),
                      ),
                    )
                  : Container(
                      width: 358,
                      height: 75,
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
                        child: Text("다음",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(154, 154, 154, 1))),
                      ),
                    )
            ],
          ),
        ),
      ),
      if(timer)GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/Setting/4/cover.png'), // 배경 이미지
            ),
          ),
          
        ),
      )
    ]);
  }
}
