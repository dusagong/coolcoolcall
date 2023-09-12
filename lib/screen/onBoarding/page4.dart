import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/auth/login.dart';
import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:coolcoolcall/screen/onBoarding/page5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          TextButton(
            onPressed: (){
              Get.to(()=>FakeLogin());
            }, 
            child: Text('skip'))
        ],
      ),
      
    );
  }
}