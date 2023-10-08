import 'dart:math';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  List<Widget> widgets = [];
  PageController pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.7,
    keepPage: false,
  );

  @override
  void initState() {
    super.initState();
    // Generate the widgets list in the initState method
    for (int i = 1; i <= 3; i++) {
      widgets.add(generateItem(i));
    }
    pageController.addListener(() {
      final currentPage = pageController.page?.toInt() ?? 0;
      if (currentPage == 0) {
        // When reaching the first item, jump to the last item
        pageController.jumpToPage(widgets.length - 2);
      } else if (currentPage == widgets.length - 1) {
        // When reaching the last item, jump to the second item
        pageController.jumpToPage(1);
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget generateItem(int itemNumber) {
    // Create different content based on the itemNumber
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
      child: Column(
        children: [
          Container(
            // Customize the content for each item here
            child: Image.asset(
              'assets/background/background.png', // Images stored in assets folder
              fit: BoxFit.fill,
            ),
          ),
          // Add more widgets or customize further based on itemNumber
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff060713),
      appBar: AppBar(
        toolbarHeight: screenHeight * 47 / 844,
        title: Text(
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
        children: [
          SizedBox(
            width: 560,
            height: min(screenWidth / 3.3 * (36 / 9), screenHeight * .9),
            child: PageView.builder(
              controller: pageController,
              itemCount: widgets.length,
              itemBuilder: (BuildContext context, int index) {
                // This part should only build the initial widget
                return widgets[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
