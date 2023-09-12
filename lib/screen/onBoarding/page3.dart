import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/auth/login.dart';
import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:coolcoolcall/screen/onBoarding/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {},
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