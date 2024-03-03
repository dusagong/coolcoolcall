import 'package:cloud_firestore/cloud_firestore.dart';
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
   try {
    await Firebase.initializeApp();
    print("Good Connection");
  readData();
    Get.put(AuthController());
    runApp(const MyApp());
  } catch (e) {
    print("Error initializing Firebase: $e");
    // Handle the error, for example, show an error message or log the error.
  }
}
void readData() async {
  try {
    // Reference to the 'users' collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    // Get documents from the 'users' collection
    QuerySnapshot querySnapshot = await users.get();

    // Loop through the documents and print their data
    querySnapshot.docs.forEach((doc) {
      print('User ID: ${doc.id}, Data: ${doc.data()}');
    });
  } catch (e) {
    print('Error reading data: $e');
  }
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
