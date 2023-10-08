import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff060713),
      appBar: AppBar(
        toolbarHeight: height * 47 / 844,
        title: Text("자주 묻는 질문",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        backgroundColor: Color(0xff060713),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
              enableInfiniteScroll:true,
              enlargeFactor:0.4,
              disableCenter:false,
                  scrollPhysics: BouncingScrollPhysics(), // Use BouncingScrollPhysics for natural scrolling

            ),
            items: [
              // Customize the first item
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 50.0, color: Colors.blue),
                        Text(
                          'Item 1',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),

              // Customize the second item
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                      child: Text(
                        'Item 2',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),

              // Customize the third item
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Item 3',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
