import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InformPage1 extends StatelessWidget {
InformPage1({super.key}); //removed 'const';

  final CollectionReference collection = FirebaseFirestore.instance.collection('');


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}