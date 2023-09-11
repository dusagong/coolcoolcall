import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoarding1 extends StatelessWidget {
  const onBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body:IconButton(
          icon: Icon(Icons.add),
          color: Colors.red,
          iconSize: 100.0,
          onPressed: () {
            AuthController.instance.logout();
            AuthController.instance.initialized = false;
            Get.offAll(() => LoginPage());
          },
        ),
    );
  }
}