import 'package:coolcoolcall/controller/auth_controller.dart';
import 'package:coolcoolcall/screen/call/call.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/loginUI.dart';
import 'package:coolcoolcall/screen/onBoarding/page3.dart';
import 'package:coolcoolcall/screen/onBoarding/page4.dart';
import 'package:coolcoolcall/setting/4/question.dart';
import 'package:coolcoolcall/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(), //loading screen should be here.
      // home: FakeLogin(),//loading screen should be here.
    );
  }
}
