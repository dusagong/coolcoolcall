import 'package:coolcoolcall/screen/call.dart';
import 'package:coolcoolcall/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String?> fetchNameFromFirestore() async {
  try {
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await FirebaseFirestore.instance.collection('기본 가입 정보').doc('a').get();

    // Check if the document exists and contains the "name" field
    if (documentSnapshot.exists) {
      final Map<String, dynamic>? data = documentSnapshot.data();

      // Retrieve the "name" field value
      final String? name = data?['name'];

      return name;
    } else {
      // Handle the case where the document doesn't exist
      print("Document does not exist.");
      return null;
    }
  } catch (e) {
    // Handle any errors that occur during the fetch process.
    print("Error fetching data: $e");
    return null;
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => Setting());
                  },
                  child: Image.asset("assets/home/setting.png"),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 230,
            ),
            FutureBuilder<String?>(
              future: fetchNameFromFirestore(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  final String? name = snapshot.data;

                  if (name != null) {
                    return Text(
                      "$name아!\n오늘도 고생했어,\n같이 자러 갈래?",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(229, 221, 234, 1)),
                    );
                  } else {
                    return Text("Document does not exist.");
                  }
                }
              },
            ),
            SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(Call());
              },
              child: Image.asset("assets/home/moon.png"),
            ),
            Text("전화하기",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(229, 221, 234, 1)))
          ],
        ),
      )),
    );
  }
}
