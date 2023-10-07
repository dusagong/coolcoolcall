import 'package:flutter/material.dart';

class Require extends StatelessWidget {
  const Require({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
    );
  }
}
